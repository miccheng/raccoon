class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :model
      t.string :serial_number
      t.integer :device_type
      t.boolean :active

      t.timestamps
    end
  end
end
