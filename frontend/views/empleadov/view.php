<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Empleadov */

$this->title = $model->ide_emp;
$this->params['breadcrumbs'][] = ['label' => 'Empleadovs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="empleadov-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->ide_emp], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->ide_emp], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'ide_emp',
            'nom_emp',
            'cedula',
            'dia',
            'mes',
            'an',
            'contrato',
            'salario',
            'cargo',
            'clave',
            'ciudad',
            'hasta',
            'rodamiento',
            'empresa_ide_emp',
        ],
    ]) ?>

</div>
