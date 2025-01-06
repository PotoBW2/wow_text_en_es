<?php
error_reporting(E_ERROR | E_PARSE);
$data = json_decode(file_get_contents('php://input'), true);
$hostname = $data['hostname'];
$username = $data['username'];
$password = $data['password'];
$database = $data['database'];
$table = $data['table'];
$text_en = $data['text_en'];
$text_es = $data['text_es'];
$exp = $data['exp'];

$is_correct = true;
$resp = [
    "type" => "",
    "data" => "",
    "mensage" => ""
];

try {
    $conn = mysqli_connect($hostname, $username, $password, $database);
    $conn->set_charset("utf8");
    $text_esc_en = mysqli_real_escape_string($conn, $text_en);
    $text_esc_es = mysqli_real_escape_string($conn, $text_es);
    $query = 'SELECT count(*) as num , id_text, text_es, ' . $exp . ' FROM ' . $table . ' WHERE text_en = "' . $text_esc_en . '"';
    $result = mysqli_query($conn, $query);
} catch (mysqli_sql_exception $e) {
    $resp["type"] = "error";
    $resp["mensage"] = $e->getMessage();
    $is_correct = false;
}
if ($is_correct) {
    if ($result) {
        while ($row = mysqli_fetch_array($result)) {
            $cantidad = $row["num"];
            $id_text = $row["id_text"];
            $text_es_bd = $row["text_es"];
            $exp_bd = $row[$exp];
        }
        if ($cantidad == 0) {
            try {
                $incertar = 'INSERT INTO `' . $table . '` (`id_text`, `text_en`, `text_es`, `path_1`, `path_2`, `path_3`, `path_4`, `path_5`, `path_6`, `path_7`, `path_8`, `path_9`) VALUES (NULL, "' . $text_esc_en . '", "' . $text_esc_es . '", "1", "0", "0", "0", "0", "0", "0", "0", "0");';
                $result_inc = mysqli_query($conn, $incertar);
            } catch (mysqli_sql_exception $e) {
                $resp["type"] = "error";
                $resp["mensage"] = $e->getMessage();
                $is_correct = false;
            }
            if ($is_correct) {
                $resp["type"] = "success";
                $resp["data"] = ["accion" => "Introducido"];
            }
        } else {
            if ($text_es != $text_es_bd && $text_es != "") {
                try {
                    $query = 'UPDATE ' . $table . ' SET text_es = "' . $text_esc_es . '", ' . $exp . ' = 1  WHERE id_text = ' . $id_text;
                    $result = mysqli_query($conn, $query);
                } catch (mysqli_sql_exception $e) {
                    $resp["type"] = "error";
                    $resp["mensage"] = $e->getMessage();
                    $is_correct = false;
                }
                if ($is_correct) {
                    $resp["type"] = "success";
                    $resp["data"] = ["accion" => "Actualizado"];
                }
            } else {
                if ($exp_bd != 1) {
                    try {
                        $query = 'UPDATE ' . $table . ' SET ' . $exp . ' = 1  WHERE id_text = ' . $id_text;
                        $result = mysqli_query($conn, $query);
                    } catch (mysqli_sql_exception $e) {
                        $resp["type"] = "error";
                        $resp["mensage"] = $e->getMessage();
                        $is_correct = false;
                    }
                    if ($is_correct) {
                        $resp["type"] = "success";
                        $resp["data"] = ["accion" => "Expansionado"];
                    }
                } else {
                    $resp["type"] = "success";
                    $resp["data"] = ["accion" => "Saltado"];
                }
            }

        }
    }
}
$json = json_encode($resp);
echo $json;