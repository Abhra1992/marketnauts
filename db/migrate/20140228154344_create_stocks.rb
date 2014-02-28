class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name

      t.timestamps
    end

    add_index :stocks, [:name], unique: true
  end
end
