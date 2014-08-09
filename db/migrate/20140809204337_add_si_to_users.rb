class AddSiToUsers < ActiveRecord::Migration
  def change
    add_column :users, :si, :float, default:0.5
  end
end
