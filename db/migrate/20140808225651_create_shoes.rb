class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :url
      t.string :seller

      t.timestamps
    end
  end
end
