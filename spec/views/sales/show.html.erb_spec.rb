require 'rails_helper'

RSpec.describe "sales/show", type: :view do
  before(:each) do
    @sale = assign(:sale, Sale.create!(
      :buyer => "Buyer",
      :description => "Description",
      :price => "9.99",
      :amount => 2,
      :address => "Address",
      :provider => "Provider"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Buyer/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Provider/)
  end
end
