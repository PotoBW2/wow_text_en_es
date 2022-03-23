<?php
include("basic/conexion2.php");
$or = '$B ';
$su = '$B';

$sql2 = '
SELECT id_text as id, text_es as esp
FROM text
WHERE text_es LIKE "%'.$or.'%"
';
$datos2 = mysqli_query($conexion2, $sql2);

$sql4 = '
SELECT count(*) as  max
FROM text
WHERE text_es LIKE "%'.$or.'%"
';
$max = 0;
$count = 0;
$datos4 = mysqli_query($conexion2, $sql4);
while ($arrayDatos3 = mysqli_fetch_array($datos4)) {
    $max = $arrayDatos3["max"];
}

echo '<h1>' . $max . '</h1><br>';
echo '<div>';
while ($arrayDatos2 = mysqli_fetch_array($datos2)) {
    $porcent = round($count / $max * 100);
    $count++;
    $text_es_correct = str_replace($or, $su, $arrayDatos2["esp"]);
    $text_esc_es = mysqli_real_escape_string($conexion2, $text_es_correct);

    echo '<p><span>' . $porcent . '</span><span> - </span><span>' . $arrayDatos2["id"] . '</span><span> - </span><span>'
        . $arrayDatos2["esp"] . '</span><span> --- </span><span>' . $text_es_correct . '</span>';
    $sql3 = '
UPDATE text SET text_es= "' . $text_esc_es . '" WHERE id_text = ' . $arrayDatos2["id"] . ';
';

//    echo '<br><br><br>'.$sql3.'<br><br><br>';
    $datos3 = mysqli_query($conexion2, $sql3);

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