<?php
$data = json_decode(file_get_contents('php://input'), true);
$ip = $data['hostname'];
$output = shell_exec("ping -n 1 $ip");
if (strpos($output, '(0% perdidos)')) {
    $resp = true;
} else {
    $resp = false;
}
$json = json_encode($resp);
echo $json;
?>