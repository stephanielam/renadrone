class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :client_id
      t.integer :drone_id
      t.datetime :checkout
      t.datetime :checkin
      t.string :review

      t.timestamps
    end
  end
end
