<?php
namespace app\controllers;
namespace frontend\controllers;
use Yii;
use yii\web\Controller;
use app\models\Comprobante;
use app\models\Periodo;
use yii\web\UploadedFile;
use yii\helpers\ArrayHelper;
use yii\web\Request\getPost;

class ComprobanteController extends Controller
{
    public $enableCsrfValidation = false;
    public function behaviors()
    {
        return [
            
            'access' => [
            'class' => \yii\filters\AccessControl::className(),
            'only' => ['view', 'index', 'create', 'update', 'delete'],
            'rules' => [
                // deny all POST requests
                
                // allow authenticated users
                [
                    'allow' => true,
                    'actions' => ['index'],
                    'roles' => ['@'],
                ],
                // everything else is denied
            ],
        ],
        ];
    }
    public function actionIndex()
    {
        $model = new Comprobante();

        
        if (Yii::$app->request->isPost) {

            $model->file = UploadedFile::getInstances($model, 'file');
    
                    if ($model->file && $model->validate()) {
                        foreach ($model->file as $file) {
                            $models = Periodo::find()->where('ide = 1')->all();
                            foreach ($models as $mod) {
                                $file->saveAs('uploads/'.$mod->tipo.'/'.$mod->year.'/'.$mod->mes.'/'.$mod->dia.'/'. $file->baseName . '.' . $file->extension);
                            }
                        }
                }
        }

        return $this->render('index', ['model' => $model]);
        //print_r($_POST);
        //$result = ArrayHelper::getColumn($model, 'anio');
        //echo $_POST['comprobante[anio]'];

        //$username = \yii\helpers\ArrayHelper::getValue($model, 'anio');
        //echo $username;

        //$result = ArrayHelper::map($model, 'anio', 'name');

        //return $result;


        }
}
?>