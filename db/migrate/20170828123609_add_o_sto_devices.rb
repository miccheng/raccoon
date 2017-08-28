class AddOStoDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :os_version, :string
  end
end
