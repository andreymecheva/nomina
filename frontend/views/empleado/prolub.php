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
//$mpdf->SetHeader('Kartik Header'); // call methods or set any properties
//$mpdf->SetHeader('Pragma: public');
//$mpdf->SetHeader('Expires: 0');
//$mpdf->SetHeader('Content-type: $content_type');
//$mpdf->SetHeader('Cache-Control: private', FALSE);
//$mpdf->SetHeader('Cache-Control: must-revalidate, post-check=0, pre-check=0');
//$mpdf->SetHeader('Content-Disposition: inline; filename=\"$filename\""');
//$mpdf->SetHeader('Content-Transfer-Encoding: binary');
//$mpdf->SetHeader('Content-Length' . filesize($path));
$mpdf->WriteHtml('<style>body{background: url("img/cabe.jpg"); background-image-resize: 6; background-repeat: no-repeat;}</style>');
$mpdf->WriteHtml('<style>body{font-family:helvetica;}</style>');
$mpdf->WriteHtml('<style>.center{text-align:center; padding:0 20px;}</style>');
$mpdf->WriteHtml('<style>.jus{text-align:justify; padding:0 20px;}</style>');
$mpdf->WriteHtml('<style>img{border-bottom:1px solid #000; padding:0 25px;}</style>');
$mpdf->WriteHtml('<br>');
$mpdf->WriteHtml('<br><br><br><div class="center"><b><h3>Certificado Laboral</h3></b></div>');
$mpdf->WriteHtml('<br><br><br><div class="center">PROLUB COMBUSTIBLES Y LUBRICANTES S.A. CON NIT No. 900.044.844-3 POR SOLICITUD DEL INTERESADO</div>');
$mpdf->WriteHtml('<br><br><br><div class="center">CERTIFICA QUE:</div>');
$mpdf->WriteHtml('<br><br><br><br><br><div class="jus">El señor '.$model->nom_emp.' identificado con cedula de ciudadanía No. '.number_format($model->cedula, 0, ',', '.').' de '.$model->ciudad.', labora en nuestra compañía desde el '.$model->dia.' de '.$model->mes.' de '.$model->an.', con
contrato a término indefinido, desempeñando el cargo de '.$model->cargo.', devengando un salario
mensual de $'.number_format($model->salario, 2, '.', ',').'.</div>');
$mpdf->WriteHtml('<br><br><br><div class="jus">La presente certificación se expide en Ibague, a los '.$ddate.' días del mes de '.$mndate.' de '.$adate.'.</div>');
$mpdf->WriteHtml('<br><br><br><br><br><br><br><div class="center"><img src="img/fyes.png"></div>');
$mpdf->WriteHtml('<div class="center">YESENIA DÍAZ GUZMAN<br>Gestión Humana<br>Prolub Combustibles y Lubricantes S.A.</div>');

echo $mpdf->Output('certificado', 'D'); // call the mp
ob_end_flush();


?>