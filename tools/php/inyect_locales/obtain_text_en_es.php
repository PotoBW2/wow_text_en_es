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
    'type' => '',
    'data' => '',
    'mensage' => ''
];
try {
    $conn = mysqli_connect($hostname, $username, $password, $database);
    $conn->set_charset('utf8');
    $query = 'SELECT en.' . $id_en . ' as id, en.' . $cell_en . ' as eng FROM ' . $tab_en . ' en, ' . $tab_es . ' es WHERE en.' . $id_en . ' = es.' . $id_es . ' AND es.' . $cell_es . " = '' AND en." . $cell_en . " != '' ORDER BY en." . $id_en;
    $result = mysqli_query($conn, $query);
} catch (mysqli_sql_exception $e) {
    $resp['type'] = 'error';
    $resp['mensage'] = $e->getMessage();
    $is_correct = false;
}
if ($is_correct) {
    if ($result) {
        $elems = [];
        while ($row = mysqli_fetch_array($result)) {
            array_push($elems, ['id' => $row['id'], 'eng' => $row['eng']]);
        }
        $resp['type'] = 'success';
        $resp['data'] = $elems;
    }
}
$json = json_encode($resp);
echo $json;
?>