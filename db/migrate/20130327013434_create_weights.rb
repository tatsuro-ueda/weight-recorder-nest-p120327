class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :weight
      t.text :memo

      t.timestamps
    end
  end
end
