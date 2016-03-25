class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :starts_on
      t.datetime :ends_on
      t.boolean :booked
      t.references :user, index: true, foreign_key: true
      t.references :truck, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
