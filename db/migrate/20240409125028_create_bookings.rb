class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.timestamp :starts_at
      t.timestamp :ends_at
      t.boolean :accepted

      t.timestamps
    end
  end
end
