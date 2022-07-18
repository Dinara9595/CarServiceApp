require 'rails_helper'

RSpec.describe Basket, type: :model do
  it { should have_many(:orders).dependent(:destroy) }

  it { should validate_presence_of :cost }
end
