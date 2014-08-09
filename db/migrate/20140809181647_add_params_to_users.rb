class AddParamsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :music, :string
    add_column :users, :sport, :string
  end
end
