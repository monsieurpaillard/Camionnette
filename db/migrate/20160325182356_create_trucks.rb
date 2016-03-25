class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :brand
      t.integer :year
      t.integer :kilometers
      t.string :type
      t.string :model
      t.boolean :available
      t.integer :daily_price
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
