require 'rails_helper'

RSpec.describe "devices/edit", type: :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :model => "MyString",
      :serial_number => "MyString",
      :device_type => 1,
      :active => false
    ))
  end

  it "renders the edit device form" do
    render

    assert_select "form[action=?][method=?]", device_path(@device), "post" do

      assert_select "input[name=?]", "device[model]"

      assert_select "input[name=?]", "device[serial_number]"

      assert_select "input[name=?]", "device[device_type]"

      assert_select "input[name=?]", "device[active]"
    end
  end
end
