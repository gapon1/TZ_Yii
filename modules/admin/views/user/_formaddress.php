<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\User */
/* @var $form yii\widgets\ActiveForm */

const MALE = 'мужской';
const FEMALE = 'женский';
const NO_INFO = 'нет информации';
?>

<div class="user-form">



    <?php $form2 = ActiveForm::begin([]); ?>


    <?= $form2->field($model, 'login')->textInput(['maxlength' => true]) ?>

    <?= $form2->field($model, 'password')->passwordInput(['maxlength' => true]) ?>

    <?= $form2->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form2->field($model, 'lastname')->textInput(['maxlength' => true]) ?>

    <?= $form2->field($model, 'gender')->dropDownList([NO_INFO => NO_INFO, MALE => MALE, FEMALE => FEMALE]) ?>

    <?= $form2->field($model, 'created_at')->hiddenInput()->label(false) ?>

    <?= $form2->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form2->field($model2, 'post_index')->textInput() ?>

    <?= $form2->field($model2, 'country')->textInput(['maxlength' => true, 'placeholder' => 'example: UA']) ?>

    <?= $form2->field($model2, 'city')->textInput(['maxlength' => true]) ?>

    <?= $form2->field($model2, 'street')->textInput(['maxlength' => true]) ?>

    <?= $form2->field($model2, 'house_number')->textInput(['maxlength' => true]) ?>

    <?= $form2->field($model2, 'office_number')->textInput(['maxlength' => true]) ?>


    <div class="form-group">
        <?= Html::submitButton('Save info', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
