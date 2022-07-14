class Executor < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :services, dependent: :destroy

  validates :name, presence: true
end
