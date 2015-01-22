<?php
namespace app\models;

use yii\base\Model;
use yii\web\UploadedFile;

/**
 * UploadForm is the model behind the upload form.
 */
class Comprobante extends Model
{
    /**
     * @var UploadedFile|Null file attribute
     */
    public $file;
    public $seguridad;
    public $anio;

    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            [['file'], 'file', 'maxFiles' => 10], // <--- here!
            [['seguridad', 'anio'], 'integer'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'file' => 'Archivos',
        ];
    }

}
?>