require 'rails_helper'

RSpec.describe "devices/index", type: :view do
  before(:each) do
    assign(:devices, [
      Device.create!(
        :model => "Model",
        :serial_number => "Serial Number",
        :device_type => 2,
        :active => false
      ),
      Device.create!(
        :model => "Model",
        :serial_number => "Serial Number",
        :device_type => 2,
        :active => false
      )
    ])
  end

  it "renders a list of devices" do
    render
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Serial Number".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
