require 'rails_helper'

describe Review do
  it { should validate_presence_of :product_id }
  it { should validate_presence_of :author }
  it { should validate_presence_of :content_body }
  it { should validate_presence_of :rating }

  it { should validate_inclusion_of(:rating).in_range(1..5) }
end
