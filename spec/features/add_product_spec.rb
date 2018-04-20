require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add a product'
    fill_in 'Name', :with => 'Cheese'
    fill_in 'Cost', :with => 10
    fill_in 'Origin', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'products!'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end