class Service < ApplicationRecord
  belongs_to :category

  has_and_belongs_to_many :executors

  has_many :orders, dependent: :destroy

  validates :name, presence: true
end