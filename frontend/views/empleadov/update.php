<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Empleadov */

$this->title = 'Update Empleadov: ' . ' ' . $model->ide_emp;
$this->params['breadcrumbs'][] = ['label' => 'Empleadovs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->ide_emp, 'url' => ['view', 'id' => $model->ide_emp]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="empleadov-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
