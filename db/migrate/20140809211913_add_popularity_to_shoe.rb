class AddPopularityToShoe < ActiveRecord::Migration
  def change
    add_column :shoes, :popularity, :integer
  end
end
