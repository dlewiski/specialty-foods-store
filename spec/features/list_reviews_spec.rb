require 'rails_helper'

describe "adding a review" do
  it "adds a review to a specific product" do
    visit product_path
    expect(page).to have_content 'Author'
  end
end
