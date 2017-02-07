require 'rails_helper'

RSpec.describe "sales/index", type: :view do
  before(:each) do
    assign(:sales, [
      Sale.create!(
        :buyer => "Buyer",
        :description => "Description",
        :price => "9.99",
        :amount => 2,
        :address => "Address",
        :provider => "Provider"
      ),
      Sale.create!(
        :buyer => "Buyer",
        :description => "Description",
        :price => "9.99",
        :amount => 2,
        :address => "Address",
        :provider => "Provider"
      )
    ])
  end

  it "renders a list of sales" do
    render
    assert_select "tr>td", :text => "Buyer".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
  end
end
