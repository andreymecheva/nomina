<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "empresa".
 *
 * @property integer $ide_emp
 * @property string $razon
 *
 * @property Empleado[] $empleados
 * @property Empleadov[] $empleadovs
 */
class Empresa extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'empresa';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ide_emp'], 'required'],
            [['ide_emp'], 'integer'],
            [['razon'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ide_emp' => 'Ide Emp',
            'razon' => 'Razon',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEmpleados()
    {
        return $this->hasMany(Empleado::className(), ['empresa_ide_emp' => 'ide_emp']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEmpleadovs()
    {
        return $this->hasMany(Empleadov::className(), ['empresa_ide_emp' => 'ide_emp']);
    }
}
