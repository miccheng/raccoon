class Device < ApplicationRecord
  enum device_type: [:iOS, :Android]

  has_many :bookings, dependent: :destroy

  def title
    "#{self.model} (S/N: #{self.serial_number})"
  end
end
