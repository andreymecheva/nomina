<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

?>
        <div class="col-lg-3"></div>
        <div class="col-lg-6 well">
            <?php $form = ActiveForm::begin(['id' => 'logsin-form']); ?>
                
            <?php $years = [['2014' => '2014', '2015' => '2015']];
            $mes = [[   '1' => 'Enero', '2' => 'Febrero', '3' => 'Marzo', '4' => 'Abril', '5' => 'Mayo', '6' => 'Junio',
                        '7' => 'Julio', '8' => 'Agosto', '9' => 'Septiembre', '10' => 'Octubre', '11' => 'Noviembre', '12' => 'Diciembre']];
            $per = [['1' => '1', '2' => '2']];
            $tipo = [['comprobante' => 'Comprobante De Pago', 'seguridad' => 'Seguridad Social']];?>

        <div class="col-md-2"></div>
        <div class="col-md-8">
            
            <?= $form->field($model, 'year')->dropDownList($years)  ?>
            <?= $form->field($model, 'mes')->dropDownList($mes)  ?>
            <?= $form->field($model, 'dia')->dropDownList($per)  ?>
            <?= $form->field($model, 'tipo')->dropDownList($tipo)  ?>
            <?= $form->field($model1, 'cedula')->textInput() ?>
            <div class="form-group">
               <?= Html::submitButton('Enviar', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
            </div>
                </div><div class="col-md-2"></div>
            <?php ActiveForm::end(); ?>
        </div>
        <div class="col-lg-3"></div>
    
