require 'rails_helper'

describe "adding a review" do
  it "adds a review to a product" do
    @product = Product.create!(name: "Tomato", cost: 4, origin: "USA")
    visit new_product_review_path(@product)
    fill_in 'Author', :with => 'Tomato Bot'
    fill_in 'Content body', :with => 'Delicious red goodness that makes my vines weep with tears of joy.'
    fill_in 'Rating', :with => 5
    click_on 'Create Review'
    expect(page).to have_content 'Tomato Bot'
  end
end
