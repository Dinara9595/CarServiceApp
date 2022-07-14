class Executor < ApplicationRecord
  has_many :orders
  has_many :services
end
