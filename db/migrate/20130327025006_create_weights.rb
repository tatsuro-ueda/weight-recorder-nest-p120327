class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.references :user
      t.decimal :weight
      t.text :memo

      t.timestamps
    end
    add_index :weights, :user_id
  end
end
