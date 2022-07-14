class Service < ApplicationRecord
  belongs_to :category
  has_many :executors
end