class Order < ApplicationRecord
  has_many :executors
  has_many :services
end
