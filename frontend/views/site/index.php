<?php
/* @var $this yii\web\View */
$this->title = 'Nomina';
?>
<div class="site-index">

    <div class="jumbotron well">
        <h1>Nomina</h1>

        <p class="lead">Prolub - Opeco</p>
        <p>
            
            <a href="<?php echo Yii::$app->request->baseUrl; ?>/index.php/empleado/comprobante" class="btn btn-lg btn-primary">Comprobantes</a>
        </p>
        <p class="lead">Certificado Laboral</p>
        <p>
            <a href="<?php echo Yii::$app->request->baseUrl; ?>/index.php/empleadov/certificado" class="btn btn-lg btn-success">Salario Fijo</a>
            <a href="<?php echo Yii::$app->request->baseUrl; ?>/index.php/empleado/certificado" class="btn btn-lg btn-success">Salario Variable</a>
        </p>
    </div>

    <div class="body-content">


    </div>
</div>
