class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :my_ans
      t.integer :target_id

      t.timestamps null: false
    end
  end
end
