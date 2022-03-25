<?php
include("basic/conexion.php");
include("basic/conexion3.php");

$sql = '
SELECT en.entry as id, en.name as eng, es.NameLoc6 as esp
FROM area_template en, locales_area es
WHERE en.entry = es.Entry  
AND en.entry >= 0
ORDER BY en.entry
';
$datos = mysqli_query($conexion, $sql);

$sql4 = '
SELECT MAX(entry) as  max
FROM area_template
';
$max = 0;
$datos4 = mysqli_query($conexion, $sql4);
while ($arrayDatos3 = mysqli_fetch_array($datos4)) {
    $max = $arrayDatos3["max"];
}
echo '<h1>' . $max . '</h1><br><div>';
$count = 0;
while ($arrayDatos = mysqli_fetch_array($datos)) {
    $porcent = round($arrayDatos["id"] / $max * 100);
    $text_esc_en = mysqli_real_escape_string($conexion3, $arrayDatos["eng"]);

    echo '<p><span>' . $porcent . '</span><span> - </span><span>' . $arrayDatos["id"] . '</span><span> - </span><span>' . $arrayDatos["eng"] . '</span>
      <span> --- </span><span>';
    $cantidad = 0;
    $sql3 = '
SELECT text_es
FROM text
WHERE text_en = "' . $text_esc_en . '"
';
    $datos3 = mysqli_query($conexion3, $sql3);
    while ($arrayDatos2 = mysqli_fetch_array($datos3)) {
        if ($arrayDatos["esp"] != $arrayDatos2["text_es"]) {
            $text_esc_es = mysqli_real_escape_string($conexion, $arrayDatos2["text_es"]);
            $sql2 = '
            UPDATE locales_area
            SET NameLoc6 = "' . $text_esc_es . '"
            WHERE Entry = ' . $arrayDatos["id"] . '
            ';
            $datos2 = mysqli_query($conexion, $sql2);
            echo 'Actualizado</span>';
            $count++;
        } else {
            echo 'Mantenido</span>';
        }
    }
    echo '</p>';

}
echo '<h1>Se ha(n) actualizado: ' . $count . ' texto(s) de '.$max.' texto(s)</h1>';
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