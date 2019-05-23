<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%address}}`.
 */
class m190523_123148_create_address_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%address}}', [
            'id' => $this->primaryKey(),
            'post_index' => $this->integer(),
            'country' => $this->string(),
            'city' => $this->string(),
            'street' => $this->string(),
            'house_number' => $this->string(),
            'office_number' => $this->string(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%address}}');
    }
}
