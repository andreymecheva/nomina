<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "periodo".
 *
 * @property integer $year
 * @property integer $mes
 * @property integer $dia
 * @property string $tipo
 * @property integer $ide
 */
class Periodo extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public $items;
    public static function tableName()
    {
        return 'periodo';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['year', 'mes', 'dia', 'tipo'], 'required'],
            [['year', 'mes', 'dia'], 'integer'],
            [['tipo'], 'string', 'max' => 11]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'year' => 'Año',
            'mes' => 'Mes',
            'dia' => 'Periodo',
            'tipo' => 'Tipo',
            'ide' => 'Ide',
        ];
    }
}
