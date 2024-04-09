class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :year_of_production
      t.string :adress
      t.integer :price_per_day

      t.timestamps
    end
  end
end
