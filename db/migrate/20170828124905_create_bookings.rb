class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :device_id
      t.integer :user_id
      t.date :checkout_at
      t.date :checkin_at

      t.timestamps
    end
  end
end
