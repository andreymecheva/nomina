<?php

use yii\helpers\Html;
use yii\grid\GridView;
//use app\models\Empresa;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Empleados Con Salario Fijo';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="empleado-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Adicionar', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel, 
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

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
            [  
            'attribute' => 'empresa_ide_emp',
            'value' => function ($model) {return $model->empresaIdeEmp->razon;},
            ],
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
