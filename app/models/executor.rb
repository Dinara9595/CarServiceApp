class Executor < ApplicationRecord
  has_many :orders
  has_many :services

  validates :name, presence: true
end
