<?php
include("basic/conexion2.php");

$sql = '
SELECT * 
FROM text
WHERE id_text > 71840;
';
$datos = mysqli_query($conexion2, $sql);

$sql4 = '
SELECT MAX(id_text) as  max
FROM text
';
$max = 0;
$datos4 = mysqli_query($conexion2, $sql4);
while ($arrayDatos3 = mysqli_fetch_array($datos4)) {
    $max = $arrayDatos3["max"];
}
echo '<h1>' . $max . '</h1><br>';
echo '<div>';
while ($arrayDatos = mysqli_fetch_array($datos)) {
    $porcent = round($arrayDatos["id_text"] / $max * 100);
    $text_esc_en = mysqli_real_escape_string($conexion2, $arrayDatos["text_en"]);
    $text_esc_es = mysqli_real_escape_string($conexion2, $arrayDatos["text_es"]);
    echo '<p><span>' . $porcent . '</span><span> - </span><span>'.$arrayDatos["id_text"].'</span><span> - </span><span>' . $arrayDatos["text_en"] . '</span>';
    $sql2 = '
INSERT INTO `text_empty` (`id_text`, `text_en`, `text_es`, `path_1`, `path_2`, `path_3`, `path_4`, `path_5`, `path_6`, `path_7`, `path_8`, `path_9`)
VALUES (NULL, "' . $text_esc_en . '", "' . $text_esc_es . '", "'.$arrayDatos["path_1"].'", "'.$arrayDatos["path_2"].'", "'.$arrayDatos["path_3"].'", "'.$arrayDatos["path_4"].'", "'.$arrayDatos["path_5"].'", "'.$arrayDatos["path_6"].'", "'.$arrayDatos["path_7"].'", "'.$arrayDatos["path_8"].'", "'.$arrayDatos["path_9"].'");
';
    $datos2 = mysqli_query($conexion2, $sql2);

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