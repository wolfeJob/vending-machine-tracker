class Snack < ApplicationRecord
  has_many :machine_snacks
  has_many :machines, through: :machine_snacks
  validates_presence_of :name
  validates_presence_of :price

def average_price
  pry
  self.average(:price)
end

end 
