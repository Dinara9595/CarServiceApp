require 'rails_helper'

RSpec.describe Order, type: :model do
  it { should have_many(:executors).dependent(:destroy) }
  it { should have_many(:services).dependent(:destroy) }

  it { should validate_presence_of :client }
end


