class User < ApplicationRecord
  has_many :orders
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable
end
