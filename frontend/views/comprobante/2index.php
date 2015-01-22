<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Empleado */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="empleado-form">

    <center>
<form action="index"  method="post" class="registration_form">
     
      <label class="control-label" for="comprobante-seguridad">Seguridad</label>
<input type="hidden" name="Comprobante[seguridad]" value=""><div id="comprobante-seguridad"><label><input type="radio" class="radio-inline" name="Comprobante[seguridad]" value="0"> Comprobante De Nomina</label>
<label><input type="radio" class="radio-inline" name="Comprobante[seguridad]" value="1"> Seguridad Social</label></div>

<div class="help-block"></div>
</div>		<div class="form-group field-comprobante-anio">
<label class="control-label" for="comprobante-anio">Anio</label>
<select id="comprobante-anio" class="form-control" name="Comprobante[anio]">
<option value="">ddd</option>
<option value="1">2014</option>
<option value="2">2015</option>
</select>

<div class="help-block"></div>
</div>		
		<div class="form-group field-comprobante-file">
<label class="control-label" for="comprobante-file">File</label>
<input type="hidden" name="Comprobante[file][]" value=""><input type="file" id="comprobante-file" name="Comprobante[file][]" multiple>

<div class="help-block"></div>
</div>		<button>Submit</button>

</form>
</center>

</div>