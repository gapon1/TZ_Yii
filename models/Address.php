<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "address".
 *
 * @property int $id
 * @property int $post_index
 * @property string $country
 * @property string $city
 * @property string $street
 * @property string $house_number
 * @property string $office_number
 */
class Address extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'address';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['post_index', 'country', 'city', 'street', 'house_number'], 'required'],
            [['post_index'], 'number', 'min' => 4],
            [['country'], 'filter', 'filter' => 'strtoupper',],
            [['country'], 'string', 'max' => 2],
            [['house_number', 'office_number'], 'string', 'max' => 6],
            [['country', 'city', 'street', 'house_number', 'office_number'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'post_index' => 'Post Index',
            'country' => 'Country',
            'city' => 'City',
            'street' => 'Street',
            'house_number' => 'House Number',
            'office_number' => 'Office Number',
            'user_id' => 'User Id',


        ];
    }

    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }

    public function saveUser($user_id)
    {
        $user = User::findOne($user_id);

        if ($user != null) {
            $this->link('user', $user);
            return true;
        }

    }
}
