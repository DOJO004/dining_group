class OrderDetail < ApplicationRecord
  validates :food_name, :price, :amount, presence: true
  
  belongs_to :user
  belongs_to :order
end
