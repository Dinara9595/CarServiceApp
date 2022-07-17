class Executor < ApplicationRecord
  has_and_belongs_to_many :services

  has_many :orders, dependent: :destroy

  validates :name, presence: true
end
