class Order < ApplicationRecord
  has_many :executors, dependent: :destroy
  has_many :services, dependent: :destroy

  validates :client, presence: true
end
