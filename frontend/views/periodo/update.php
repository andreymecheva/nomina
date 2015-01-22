<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Periodo */

/*$this->title = 'Actualizar Datos: ';
$this->params['breadcrumbs'][] = ['label' => 'Periodos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->ide, 'url' => ['view', 'id' => $model->ide]];
$this->params['breadcrumbs'][] = 'Actualizar';
*/?>
<div class="periodo-update">
	<?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
