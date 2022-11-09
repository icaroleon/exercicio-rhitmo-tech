class CreateBedrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :bedrooms do |t|
      t.string :description
      t.integer :price
      t.boolean :rented
      t.string :category

      t.timestamps
    end
  end
end
