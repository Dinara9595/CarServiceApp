class Order < ApplicationRecord
  belongs_to :executor

  has_and_belongs_to_many :services

  validates :client, presence: true

  def cost
    services.sum(:price)
  end
end
