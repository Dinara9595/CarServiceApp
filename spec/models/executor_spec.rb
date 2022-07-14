require 'rails_helper'

RSpec.describe Executor, type: :model do
  it { should have_many(:orders).dependent(:destroy) }
  it { should have_many(:services).dependent(:destroy) }

  it { should validate_presence_of :name }
end

