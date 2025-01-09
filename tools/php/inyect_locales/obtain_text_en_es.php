<?php
error_reporting(E_ERROR | E_PARSE);
$data = json_decode(file_get_contents('php://input'), true);
$hostname = $data['hostname'];
$username = $data['username'];
$password = $data['password'];
$database = $data['database'];
$tab_en = $data['tab_en'];
$tab_es = $data['tab_es'];
$cell_en = $data['cell_en'];
$cell_es = $data['cell_es'];
$id_en = $data['id_en'];
$id_es = $data['id_es'];
$id = $data['id'];

$is_correct = true;
$resp = [
    "type" => "",
    "data" => "",
    "mensage" => ""
];
try {
    $conn = mysqli_connect($hostname, $username, $password, $database);
    $conn->set_charset("utf8");
    $query = "SELECT en." . $cell_en . " as eng, es." . $cell_es . " as esp FROM " . $tab_en . " en, " . $tab_es . " es WHERE en." . $id_en . " = es." . $id_es . " AND en.".$id_en." = ".$id;

    $result = mysqli_query($conn, $query);
} catch (mysqli_sql_exception $e) {
    $resp["type"] = "error";
    $resp["mensage"] = $e->getMessage();
    $is_correct = false;
}
if ($is_correct) {
    if ($result) {
        $elem = null;
        while ($row = mysqli_fetch_array($result)) {
            $elem = ["eng" => $row["eng"],"esp" => $row["esp"]];
        }
        $resp["type"] = "success";
        $resp["data"] = $elem;
    }
}
$json = json_encode($resp);
echo $json;
?>