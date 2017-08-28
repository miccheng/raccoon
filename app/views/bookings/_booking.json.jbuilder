json.extract! booking, :id, :device_id, :user_id, :checkout_at, :checkin_at, :created_at, :updated_at
json.url booking_url(booking, format: :json)
