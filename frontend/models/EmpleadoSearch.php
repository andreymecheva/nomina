<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Empleado;

/**
 * EmpleadoSearch represents the model behind the search form about `app\models\Empleado`.
 */
class EmpleadoSearch extends Empleado
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ide_emp', 'cedula', 'dia', 'an', 'salario', 'empresa_ide_emp'], 'integer'],
            [['nom_emp', 'mes', 'contrato', 'cargo', 'clave', 'ciudad'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Empleado::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'ide_emp' => $this->ide_emp,
            'cedula' => $this->cedula,
            'dia' => $this->dia,
            'an' => $this->an,
            'salario' => $this->salario,
            'empresa_ide_emp' => $this->empresa_ide_emp,
        ]);

        $query->andFilterWhere(['like', 'nom_emp', $this->nom_emp])
            ->andFilterWhere(['like', 'mes', $this->mes])
            ->andFilterWhere(['like', 'contrato', $this->contrato])
            ->andFilterWhere(['like', 'cargo', $this->cargo])
            ->andFilterWhere(['like', 'clave', $this->clave])
            ->andFilterWhere(['like', 'ciudad', $this->ciudad]);

        return $dataProvider;
    }
}
