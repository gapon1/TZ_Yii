<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\User */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="user-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'login',
            'password',
            'name',
            'lastname',
            'gender',
            'created_at',
            'email:email',
        ],
    ]) ?>

    <?php foreach ($address as $addres): ?>

    <?= DetailView::widget([
        'model' => $addres,
        'attributes' => [
            'post_index',
            'country',
            'city',
            'street',
            'house_number',
            'office_number',
            'user_id'
        ],
    ]) ?>

    <?php endforeach;?>


</div>

</div>