require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(1),
        description: Faker::Hipster.paragraph(1),
        quantity: 10,
        price: 64.99
      )
      end
    end

  scenario "They see all products" do
    # ACT
    visit root_path
    first('.title').click
   
    sleep 5
    # DEBUG / VERIFY
    save_screenshot
  end

end
