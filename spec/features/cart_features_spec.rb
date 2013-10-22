require 'spec_helper'

describe "Cart" do
  let!(:iphone) { FactoryGirl.create(:product) }
  
  it "initially has no products" do
    visit product_path(iphone)
    expect(page).to have_css ".cart .item-count", text: "0"
  end

  it "can have products added to it" do
    visit product_path(iphone)
    click_button "Add to Cart"

    expect(page).to have_css ".cart .item-count", text: "1"
  end

end