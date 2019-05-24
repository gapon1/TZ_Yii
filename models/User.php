<?php

namespace app\models;

use Yii;
use yii\widgets\ActiveForm;

/**
 * This is the model class for table "user".
 *
 * @property int $id
 * @property string $login
 * @property string $password
 * @property string $name
 * @property string $lastname
 * @property string $gender
 * @property string $created_at
 * @property string $email
 */
class User extends \yii\db\ActiveRecord
{

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['login', 'name', 'password', 'gender', 'email',  'lastname'], 'required'],
            [['login'], 'string', 'min' => 4],
            [['login', 'email'], 'unique'],
            [['name', 'lastname'], 'filter', 'filter' => 'ucfirst'],
            [['password'], 'string', 'min' => 6],
            ['email', 'email'],
            [['created_at'], 'default', 'value' => date("D-M-Y H:i")],
            [['login', 'password', 'name', 'lastname', 'gender', 'email'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {


        return [
            'id' => 'ID',
            'login' => 'Login',
            'password' => 'Password',
            'name' => 'Name',
            'lastname' => 'Lastname',
            'gender' => 'Gender',
            'created_at' => 'Created At',
            'email' => 'Email',
        ];


    }


    public function getCreatedAt()
    {
        return Yii::$app->formatter->asDate($this->created_at);
    }
}
