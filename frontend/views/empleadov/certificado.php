<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */


?>
<div class="site-login">
    

    

    <div class="row"> <div class="col-lg-3"></div>
        <div class="col-lg-6 well">
            <h2>Empleado con Salario Variable</h2>
            <?php $form = ActiveForm::begin(['id' => 'logsin-form']); ?>
                
                <?= $form->field($model, 'cedula')->textInput() ?>
                <?= $form->field($model, 'clave')->passwordInput(['maxlength' => 45]) ?>
                
                <div class="form-group">
                    <?= Html::submitButton('Enviar', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
                </div>
            <?php ActiveForm::end(); ?>
        </div>
         <div class="col-lg-3"></div>
        
    </div>
</div>
