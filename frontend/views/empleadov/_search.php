<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\EmpleadovSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="empleadov-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'ide_emp') ?>

    <?= $form->field($model, 'nom_emp') ?>

    <?= $form->field($model, 'cedula') ?>

    <?= $form->field($model, 'dia') ?>

    <?= $form->field($model, 'mes') ?>

    <?php // echo $form->field($model, 'an') ?>

    <?php // echo $form->field($model, 'contrato') ?>

    <?php // echo $form->field($model, 'salario') ?>

    <?php // echo $form->field($model, 'cargo') ?>

    <?php // echo $form->field($model, 'clave') ?>

    <?php // echo $form->field($model, 'ciudad') ?>

    <?php // echo $form->field($model, 'hasta') ?>

    <?php // echo $form->field($model, 'rodamiento') ?>

    <?php // echo $form->field($model, 'empresa_ide_emp') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
