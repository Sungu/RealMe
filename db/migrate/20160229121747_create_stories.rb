class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :speaker
      t.text :content
      t.boolean :next_ok

      t.timestamps null: false
    end
  end
end
