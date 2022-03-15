<?php
include("basic/conexion.php");
include("basic/conexion2.php");

$sql = '
SELECT en.id as id, en.name as eng, es.name_loc6 as esp
FROM taxi_nodes en, locales_taxi_node es
WHERE en.id = es.entry  AND en.id >= 0
ORDER BY en.id
';
$datos = mysqli_query($conexion, $sql);

$sql4 = '
SELECT MAX(id) as  max
FROM taxi_nodes
';
$max = 0;
$datos4 = mysqli_query($conexion, $sql4);
while($arrayDatos3 = mysqli_fetch_array($datos4)){
$max = $arrayDatos3["max"];
}
echo '<h1>'.$max.'</h1><br>';
echo '<div>';
while($arrayDatos = mysqli_fetch_array($datos)){
$porcent = round($arrayDatos["id"]/$max*100);
$text_esc_en = mysqli_real_escape_string($conexion2, $arrayDatos["eng"]);
$text_esc_es = mysqli_real_escape_string($conexion2, $arrayDatos["esp"]);

echo '<p><span>'.$porcent.'</span><span> - </span><span>'.$arrayDatos["id"].'</span><span> - </span><span>'.$arrayDatos["eng"].'</span>
      <span> --- </span><span>';
$cantidad = 0;
$sql3 ='
SELECT count(*) as num
FROM text
WHERE text_en = "'.$text_esc_en.'"
';
$datos3 = mysqli_query($conexion2, $sql3);
while($arrayDatos2 = mysqli_fetch_array($datos3)){
$cantidad = $arrayDatos2["num"];
}
if($cantidad == 0){
echo 'Registrando</span>';
$sql2 = '
INSERT INTO `text` (`id_text`, `text_en`, `text_es`, `path_1`, `path_2`, `path_3`, `path_4`, `path_5`, `path_6`, `path_7`, `path_8`, `path_9`)
VALUES (NULL, "'.$text_esc_en.'", "'.$text_esc_es.'", "1", "0", "0", "0", "0", "0", "0", "0", "0");
';
$datos2 = mysqli_query($conexion2, $sql2);
}else{
echo 'Ya esta registrado</span>';
}
echo '</p>';
}
echo '</div>
<script>
window.addEventListener("load", init);

function init(){
window.scrollTo(0,document.body.scrollHeight);
var sonido = new Audio("media/beep.mp3");
sonido.play();
}
</script>
';

?>