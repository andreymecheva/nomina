<?php

namespace app\controllers;
namespace frontend\controllers;

use kartik\mpdf\Pdf;
use Yii;
use app\models\Empleadov;
use app\models\EmpleadovSearch;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\db\Query;

/**
 * EmpleadovController implements the CRUD actions for Empleadov model.
 */
class EmpleadovController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],

                ],
            ],
            'access' => [
            'class' => \yii\filters\AccessControl::className(),
            'only' => ['view', 'index', 'create', 'update', 'delete'],
            'rules' => [
                // deny all POST requests
                
                // allow authenticated users
                [
                    'allow' => true,
                    'actions' => ['view', 'index', 'create', 'update', 'delete'],
                    'roles' => ['@'],
                ],
                // everything else is denied
            ],
        ],
        ];
    }

    public function actionCertificado(){
        
        $model = new Empleadov();
        if ($model->load(Yii::$app->request->post())) {
            $cedula = $model->cedula;
            $clave = $model->clave;
            $connection = \Yii::$app->db;
            echo $cedula;
            $models = Empleadov::find()->where('cedula = '.$cedula.'')->all();
            
            foreach ($models as $model) {
                echo 'Car name: ' . $model->nom_emp;
                echo '<br/>';
                echo 'Car color: ' . $model->cedula;

                if ( $model->clave == $clave){
                    
                    //GENERAR PDF PARA PROLUB
                    if ($model->empresa_ide_emp == 1){
                    $pdf = new Pdf([
                    'mode' => Pdf::MODE_CORE, // leaner size using standard fonts
                    'content' => $this->renderPartial('prolub', ['model'=>$model]),
                    'options' => ['title' => 'Certificado Laboral','subject' => 'Prolub SA'],
                    'methods' => []
                    ]);
                    return $pdf->render();
                }
                else if ($model->empresa_ide_emp == 2){
                    $pdf = new Pdf([
                    'mode' => Pdf::MODE_CORE, // leaner size using standard fonts
                    'content' => $this->renderPartial('opeco', ['model'=>$model]),
                    'options' => ['title' => 'Certificado Laboral','subject' => 'OPECO SAS'],
                    'methods' => []
                    ]);
                    return $pdf->render();
                }
            }
                else{
                    echo "no coincide";

                }
            }
        }
        else {
            return $this->render('certificado', [
                'model' => $model,
            ]);
        }
    }
    /**
     * Lists all Empleadov models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new EmpleadovSearch();
       $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
       return $this->render('index', [
           'searchModel' => $searchModel, 
           'dataProvider' => $dataProvider,
       ]);
    }

    /**
     * Displays a single Empleadov model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Empleadov model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Empleadov();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->ide_emp]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Empleadov model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->ide_emp]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Empleadov model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Empleadov model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Empleadov the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Empleadov::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
