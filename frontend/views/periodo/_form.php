<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Periodo */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="periodo-form">
	<div class="col-md-2"></div>
<div class="col-md-8 well">
	<center> <h2>Paso 1</h2> </center>
    <?php $form = ActiveForm::begin([
    'layout' => 'horizontal',
    'fieldConfig' => [
        'template' => "{label}\n{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
        'horizontalCssClasses' => [
            'label' => 'col-sm-3',
            'offset' => 'col-sm-offset-3',
            'wrapper' => 'col-sm-12',
            'error' => '',
            'hint' => '',
        ],
    ],
]);
    $years = [['2014' => '2014', '2015' => '2015']];
    $mes = [[	'1' => 'Enero', '2' => 'Febrero', '3' => 'Marzo', '4' => 'Abril', '5' => 'Mayo', '6' => 'Junio',
    			'7' => 'Julio', '8' => 'Agosto', '9' => 'Septiembre', '10' => 'Octubre', '11' => 'Noviembre', '12' => 'Diciembre']];
    $per = [['1' => '1', '2' => '2']];
    $tipo = [['comprobante' => 'Comprobante', 'seguridad' => 'Seguridad Social']];
    ?>


     <div class="col-md-3"><?= $form->field($model, 'year')->dropDownList($years)  ?></div>
     <div class="col-md-3"><?= $form->field($model, 'mes')->dropDownList($mes)  ?></div>
     <div class="col-md-3"><?= $form->field($model, 'dia')->dropDownList($per)  ?></div>
     <div class="col-md-3"><?= $form->field($model, 'tipo')->dropDownList($tipo)  ?></div>
     <div class="col-md-3"><div class="form-group" style="padding-left:15px;">
     	
        <?= Html::submitButton($model->isNewRecord ? 'Crear' : 'Siguiente', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div></div>

    <?php ActiveForm::end(); ?>
</div>
<div class="col-md-2"></div>
</div>
