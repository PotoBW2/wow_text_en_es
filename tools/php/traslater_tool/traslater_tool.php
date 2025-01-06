<?php
//error_reporting(E_ERROR | E_PARSE);
$data = json_decode(file_get_contents('php://input'), true);
//header('Content-Type: text/html; charset=utf-8');

$hostname = $data['hostname'];
$username = $data['username'];
$password = $data['password'];
$database = "text";
$source = "en";
$target = "es";
$text = $data['text'];
$id = $data['id'];

$is_correct = true;
$resp = [
    "type" => "",
    "data" => "",
    "mensage" => ""
];

$parametros = [
    'sl' => $source,
    'tl' => $target,
    'q' => $text,
];

$cabeceras = [
    "Charset" => "UTF-8",
    "User-Agent" => "AndroidTranslate/5.3.0.RC02.130475354-53000263 5.1 phone TRANSLATE_OPM5_TEST_1"
];

$url = "https://translate.google.com/translate_a/single?client=at&dt=t&dt=ld&dt=qca&dt=rm&dt=bd&dj=1&hl=es-ES&ie=UTF-8&oe=UTF-8&inputm=2&otf=2&iid=1dd3b944-fa62-4b55-b330-74909a99969e";

$curl = curl_init($url);
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($parametros));
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curl, CURLOPT_HTTPHEADER, $cabeceras);
$response = curl_exec($curl);
$httpcode = curl_getinfo($curl, CURLINFO_HTTP_CODE);
curl_close($curl);

if ($httpcode == 200) {
    $traduc = "";
    $data = json_decode($response, true)['sentences'];
    for ($i = 0; $i < count($data); $i++) {
        $traduc = $traduc . $data[$i]['trans'];
    }
    try {
        $conn = mysqli_connect($hostname, $username, $password, $database);
        $conn->set_charset("utf8");
        $traduc_esc = mysqli_real_escape_string($conn, $traduc);
        $query = "UPDATE text SET text_es='".$traduc_esc."' WHERE id_text = ".$id;
        $result = mysqli_query($conn, $query);
    } catch (mysqli_sql_exception $e) {
        $resp["type"] = "error";
        $resp["mensage"] = $e->getMessage();
        $is_correct = false;
    }
    if ($is_correct) {
        if ($result) {
            $resp["type"] = "success";
            $resp["data"] = ["accion" => "Traducido", "text_es"=>$traduc];
        }
    }
} else {
    $error = curl_error($curl);
    $resp["type"] = "error";
    $resp["mensage"] = $error.$response;
}
$json = json_encode($resp);
echo $json;