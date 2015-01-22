<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Empleadov */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="empleadov-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ide_emp')->textInput() ?>

    <?= $form->field($model, 'nom_emp')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'cedula')->textInput() ?>

    <?= $form->field($model, 'dia')->textInput() ?>

    <?= $form->field($model, 'mes')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'an')->textInput() ?>

    <?= $form->field($model, 'contrato')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'salario')->textInput() ?>

    <?= $form->field($model, 'cargo')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'clave')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'ciudad')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'hasta')->textInput() ?>

    <?= $form->field($model, 'rodamiento')->textInput() ?>

    <?= $form->field($model, 'empresa_ide_emp')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Crear' : 'Modificar', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
