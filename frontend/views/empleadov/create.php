<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Empleadov */

$this->title = 'Adicionar Empleado';
$this->params['breadcrumbs'][] = ['label' => 'Empleadovs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="empleadov-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
