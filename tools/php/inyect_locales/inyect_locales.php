<?php
error_reporting(E_ERROR | E_PARSE);
$data = json_decode(file_get_contents('php://input'), true);
$hostname = $data['hostname'];
$username = $data['username'];
$password = $data['password'];
$database = $data['database'];
$tab_es = $data['tab_es'];
$cell_es = $data['cell_es'];
$id_es = $data['id_es'];
$text_en = $data['text_en'];
$tab_d = $data['tab_d'];
$bd_d = $data['bd_d'];
$id = $data['id'];

$is_correct = true;
$resp = [
    'type' => '',
    'data' => '',
    'mensage' => ''
];

try {
    $conn = mysqli_connect($hostname, $username, $password, $bd_d);
    $conn->set_charset('utf8');
    $text_esc_en = mysqli_real_escape_string($conn, $text_en);
    $sql = 'SELECT text_es FROM ' . $tab_d . ' WHERE text_en = "' . $text_esc_en . '"';
    $result = mysqli_query($conn, $sql);
} catch (mysqli_sql_exception $e) {
    $resp['type'] = 'error';
    $resp['mensage'] = $e->getMessage();
    $is_correct = false;
}
if ($is_correct) {
    if ($result) {
        while ($row = mysqli_fetch_array($result)) {
            $text_es = $row['text_es'];
        }
        try {
            $conn2 = mysqli_connect($hostname, $username, $password, $database);
            $conn2->set_charset('utf8');
            $text_esc_es = mysqli_real_escape_string($conn2, $text_es);
            $sql = 'UPDATE ' . $tab_es . ' set ' . $cell_es . ' = "' . $text_esc_es . '" WHERE ' . $id_es . ' = ' . $id;
            $result = mysqli_query($conn2, $sql);
        } catch (mysqli_sql_exception $e) {
            $resp['type'] = 'error';
            $resp['mensage'] = $e->getMessage();
            $is_correct = false;
        }
        if ($is_correct) {
            $resp['type'] = 'success';
            $resp['data'] = ["accion" => "Inyectado"];
        }
    }
}

$json = json_encode($resp);
echo $json;
?>