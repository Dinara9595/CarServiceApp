require 'rails_helper'

RSpec.describe Service, type: :model do
  it { should belong_to :category }
  it { should have_many(:orders).dependent(:destroy) }
  it { should have_and_belong_to_many(:executors) }

  it { should validate_presence_of :name }
end
