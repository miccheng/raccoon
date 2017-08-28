json.extract! device, :id, :model, :serial_number, :device_type, :active, :created_at, :updated_at
json.url device_url(device, format: :json)
