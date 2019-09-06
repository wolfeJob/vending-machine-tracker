require 'rails_helper'

RSpec.describe 'When a user visits a snack show page', type: :feature do
  scenario 'they see all the snack details' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    skittle = dons.snacks.create(name:"skittles", price: 2.00)
    starburst = dons.snacks.create(name:"skittles", price: 2.00)

    visit snack_path(skittle)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
    expect(page).to have_content(skittle.name)
    expect(page).to have_content(skittle.price)
  end
end
