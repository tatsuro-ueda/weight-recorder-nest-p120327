class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.references :weight

      t.timestamps
    end
    add_index :users, :weight_id
  end
end
