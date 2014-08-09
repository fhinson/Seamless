class AddStylesToUser < ActiveRecord::Migration
  def change
    add_column :users, :Work_Outdoor, :float, default:0.5
    add_column :users, :Military_Law_Enforcement, :float, default:0.5
    add_column :users, :Boots, :float, default:0.5
    add_column :users, :Dress, :float, default:0.5
    add_column :users, :Western, :float, default:0.5
    add_column :users, :Casual, :float, default:0.4
    add_column :users, :Sandals, :float, default:0.4
    add_column :users, :Athletic, :float, default:0.5
    add_column :users, :Classics, :float, default:0.5
    add_column :users, :Bowling, :float, default:0.5
    add_column :users, :Accessories, :float, default:0.5
    add_column :users, :Nursing, :float, default:0.5
    add_column :users, :Slippers, :float, default:0.5
    add_column :users, :Service_Hospitality, :float, default:0.6
    add_column :users, :Handbads, :float, default:0.6

  end
end
