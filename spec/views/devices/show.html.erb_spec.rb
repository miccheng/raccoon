require 'rails_helper'

RSpec.describe "devices/show", type: :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :model => "Model",
      :serial_number => "Serial Number",
      :device_type => 2,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Serial Number/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
