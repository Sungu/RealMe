class CreateIlljus < ActiveRecord::Migration
  def change
    create_table :illjus do |t|
      t.integer :illchi
      t.integer :judae
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
