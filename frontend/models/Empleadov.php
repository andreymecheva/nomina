<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "empleadov".
 *
 * @property integer $ide_emp
 * @property string $nom_emp
 * @property integer $cedula
 * @property integer $dia
 * @property string $mes
 * @property integer $an
 * @property string $contrato
 * @property integer $salario
 * @property string $cargo
 * @property string $clave
 * @property string $ciudad
 * @property integer $hasta
 * @property integer $rodamiento
 * @property integer $empresa_ide_emp
 *
 * @property Empresa $empresaIdeEmp
 */
class Empleadov extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'empleadov';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ide_emp', 'empresa_ide_emp'], 'required'],
            [['ide_emp', 'cedula', 'dia', 'an', 'salario', 'hasta', 'rodamiento', 'empresa_ide_emp'], 'integer'],
            [['nom_emp', 'mes', 'contrato', 'cargo', 'clave', 'ciudad'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ide_emp' => 'Codigo',
            'nom_emp' => 'Nombre',
            'cedula' => 'Cedula',
            'dia' => 'Dia',
            'mes' => 'Mes',
            'an' => 'Año',
            'contrato' => 'Contrato',
            'salario' => 'Salario',
            'cargo' => 'Cargo',
            'clave' => 'Clave',
            'ciudad' => 'Ciudad',
            'hasta' => 'Hasta',
            'rodamiento' => 'Rodamiento',
            'empresa_ide_emp' => 'Empresa',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEmpresaIdeEmp()
    {
        return $this->hasOne(Empresa::className(), ['ide_emp' => 'empresa_ide_emp']);
    }
}
