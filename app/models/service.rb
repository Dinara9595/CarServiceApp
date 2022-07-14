class Service < ApplicationRecord
  belongs_to :category
  has_many :executors

  validates :name, presence: true
end