class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :uid
      t.string :username
      t.string :name
      t.string :avatar

      t.timestamps
    end

    add_index :users, [:uid], unique: true
    add_index :users, [:username], unique: true
  end
end
