require 'rails_helper'

RSpec.describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should belong_to :owner }
  end

  it 'average_snack_price' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    skittle = dons.snacks.create(name:"skittles", price: 2.00)
    starburst = dons.snacks.create(name:"skittles", price: 2.00)
    expect(dons.average_snack_price).to eq(2)
    end
end
