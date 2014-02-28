class AddCashToUser < ActiveRecord::Migration
  def change
    add_column :users, :cash, :integer, default: 1_000_000
  end
end
