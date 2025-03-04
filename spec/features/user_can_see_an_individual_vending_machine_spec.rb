require 'rails_helper'

RSpec.describe 'When a user visits a vending machine show page', type: :feature do
  scenario 'they see the location of that machine and the snack detsails' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    skittle = dons.snacks.create(name:"skittles", price: 2.00)
    starburst = dons.snacks.create(name:"skittles", price: 2.00)

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
    expect(page).to have_content(skittle.name)
    expect(page).to have_content(skittle.price)
    expect(page).to have_content(starburst.name)
    expect(page).to have_content(starburst.price)

    expect(page).to have_content("Average Price: $2")
  end
end
