require 'rails_helper'

RSpec.describe "sales/edit", type: :view do
  before(:each) do
    @sale = assign(:sale, Sale.create!(
      :buyer => "MyString",
      :description => "MyString",
      :price => "9.99",
      :amount => 1,
      :address => "MyString",
      :provider => "MyString"
    ))
  end

  it "renders the edit sale form" do
    render

    assert_select "form[action=?][method=?]", sale_path(@sale), "post" do

      assert_select "input#sale_buyer[name=?]", "sale[buyer]"

      assert_select "input#sale_description[name=?]", "sale[description]"

      assert_select "input#sale_price[name=?]", "sale[price]"

      assert_select "input#sale_amount[name=?]", "sale[amount]"

      assert_select "input#sale_address[name=?]", "sale[address]"

      assert_select "input#sale_provider[name=?]", "sale[provider]"
    end
  end
end
