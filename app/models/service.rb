class Service < ApplicationRecord
  belongs_to :category
  has_many :orders, dependent: :destroy
  has_many :executors, dependent: :destroy

  validates :name, presence: true
end