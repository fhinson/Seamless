class AddColsToShoe < ActiveRecord::Migration
  def change
    add_column :shoes, :brand, :string
    add_column :shoes, :description, :text
    add_column :shoes, :age_group, :string
    add_column :shoes, :price, :float
    add_column :shoes, :product_type, :string
    add_column :shoes, :gender, :string
    add_column :shoes, :color, :string
  end
end
