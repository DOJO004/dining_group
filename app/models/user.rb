class User < ApplicationRecord
  has_many :orders
  has_many :order_details

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable
end
