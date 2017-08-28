class Booking < ApplicationRecord
  validates_presence_of [:user, :device, :checkout_at]

  belongs_to :user
  belongs_to :device
end
