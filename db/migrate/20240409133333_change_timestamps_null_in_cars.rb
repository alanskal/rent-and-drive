class ChangeTimestampsNullInCars < ActiveRecord::Migration[7.1]
  def change
    change_column_null :cars, :created_at, true
    change_column_null :cars, :updated_at, true
  end
end
