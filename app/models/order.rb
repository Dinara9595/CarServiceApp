class Order < ApplicationRecord
  belongs_to :executor
  belongs_to :service

  validates :client, presence: true
end
