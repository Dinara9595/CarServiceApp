class Basket < ApplicationRecord
  has_many :orders, dependent: :destroy

  validates :cost, presence: true
end
