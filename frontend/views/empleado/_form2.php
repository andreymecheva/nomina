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
<form action="make"  method="post" class="registration_form">
     
      <input type="text" name="name" value="" placeholder="Cedula" size="25" /></br>
      <input type="password" name="pass" value="" placeholder="Clave" size="25" /></br>
      <input type="hidden" value="submitted" />
    <button type="submit">Descargar</button>

</form>
</center>

</div>
