
<?php 
include('../mpdf/mdpf/mpdf.php');

//Create an instance of the class:
$mpdf=new mPDF();

//Write some HTML code:
$mpdf->WriteHTML('<p>Hallo World</p>');

//Output a PDF file:
$mpdf->Output();
exit;
?>