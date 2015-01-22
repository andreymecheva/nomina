<style>
	body{background-image: url('/img/cabe.jpg');
	    background-color: #cccccc;}
</style>
<?php use kartik\mpdf\Pdf;
//$pdf = Yii::$app->pdf; // or new Pdf();
$meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
$ddate = date('d');
$mdate = date('m');
$mndate = $meses[date('n')-1];
$adate = date ('Y');

$pdf = new Pdf();
$mpdf = $pdf->api; // fetches mpdf api

$mpdf->WriteHtml('<style>body{font-family:helvetica;}</style>');
$mpdf->WriteHtml('<style>.center{text-align:center; padding:0 20px;}</style>');
$mpdf->WriteHtml('<style>.jus{text-align:justify; padding:0 20px;}</style>');
$mpdf->WriteHtml('<style>.img1{border-bottom:1px solid #000; padding:0 25px;}</style>');
$mpdf->WriteHtml('<style>.img2{border-bottom:0px solid #000; padding:0 25px; text-align:left;}</style>');
$mpdf->WriteHtml('<div class="left"><img class="img2" src="img/opeco.png"></div>');
$mpdf->WriteHtml('<br>');
$mpdf->WriteHtml('<br><div class="center"><b><h3>Certificado Laboral</h3></b></div>');
$mpdf->WriteHtml('<br><br><br><div class="center">OPECO SAS Operador Logístico Industrial con NIT. No. 900.664.445-8
POR SOLICITUD DEL INTERESADO </div>');
$mpdf->WriteHtml('<br><br><br><div class="center">CERTIFICA QUE:</div>');
$mpdf->WriteHtml('<br><br><br><br><br><div class="jus">El señor '.$model->nom_emp.' identificado con cedula de ciudadanía No. '.number_format($model->cedula, 0, ',', '.').' de '.$model->ciudad.', labora en nuestra compañía desde el '.$model->dia.' de '.$model->mes.' de '.$model->an.', con
contrato a término indefinido, desempeñando el cargo de '.$model->cargo.', devengando un salario
mensual de $'.number_format($model->salario, 2, '.', ',').'.</div>');
$mpdf->WriteHtml('<br><br><br><div class="jus">La presente certificación se expide en Ibague, a los '.$ddate.' días del mes de '.$mndate.' de '.$adate.'.</div>');
$mpdf->WriteHtml('<br><br><br><br><br><br><br><div class="center"><img class="img1" src="img/fyes.png"></div>');
$mpdf->WriteHtml('<div class="center">YESENIA DÍAZ GUZMAN<br>Gestión Humana<br>Prolub Combustibles y Lubricantes S.A.</div>');

echo $mpdf->Output('certificado', 'D'); // call the mp
ob_end_flush();


?>