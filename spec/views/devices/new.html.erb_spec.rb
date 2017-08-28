require 'rails_helper'

RSpec.describe "devices/new", type: :view do
  before(:each) do
    assign(:device, Device.new(
      :model => "MyString",
      :serial_number => "MyString",
      :device_type => 1,
      :active => false
    ))
  end

  it "renders new device form" do
    render

    assert_select "form[action=?][method=?]", devices_path, "post" do

      assert_select "input[name=?]", "device[model]"

      assert_select "input[name=?]", "device[serial_number]"

      assert_select "input[name=?]", "device[device_type]"

      assert_select "input[name=?]", "device[active]"
    end
  end
end
