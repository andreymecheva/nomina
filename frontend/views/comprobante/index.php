<?php
use yii\widgets\ActiveForm;
use yii\helpers\Html;
use yii\helpers\Url;


	$data = [
    ['age' => 30, 'name' => 'Alexander'],
    ['age' => 30, 'name' => 'Brian'],
    ['age' => 19, 'name' => 'Barney'],
];
?>
<div class="empleado-form">
<div class="col-md-2"></div>
<div class="col-md-8 well">
	<center> <h2>Paso 2</h2> </center>
	<?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]);?>
	<?= $form->field($model, 'file[]')->fileInput(['multiple' => true]) ?>
	<div class="form-group">
        <a href="<?php echo Yii::$app->request->baseUrl; ?>/index.php/periodo/update?id=1" class="btn btn-primary" style="float:;">Atras</a>
        <?= Html::submitButton('Subir', ['class' => 'btn btn-success']) ?>
    </div>

	<?php ActiveForm::end(); ?>

</div>
<div class="col-md-2"></div>
</div>
<style>
	.btn-primary{
		border-bottom: 5px solid #215D91;
	}
	.btn-success{
		border-bottom: 5px solid #367636
	}
</style>