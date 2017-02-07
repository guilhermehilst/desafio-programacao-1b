require 'rails_helper'

RSpec.describe "sales/new", type: :view do
  before(:each) do
    assign(:sale, Sale.new(
      :buyer => "MyString",
      :description => "MyString",
      :price => "9.99",
      :amount => 1,
      :address => "MyString",
      :provider => "MyString"
    ))
  end

  it "renders new sale form" do
    render

    assert_select "form[action=?][method=?]", sales_path, "post" do

      assert_select "input#sale_buyer[name=?]", "sale[buyer]"

      assert_select "input#sale_description[name=?]", "sale[description]"

      assert_select "input#sale_price[name=?]", "sale[price]"

      assert_select "input#sale_amount[name=?]", "sale[amount]"

      assert_select "input#sale_address[name=?]", "sale[address]"

      assert_select "input#sale_provider[name=?]", "sale[provider]"
    end
  end
end
