class Order < ApplicationRecord
  belongs_to :executor
  belongs_to :basket

  has_and_belongs_to_many :services

  validates :client, presence: true
end
