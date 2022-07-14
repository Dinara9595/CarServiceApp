require 'rails_helper'

RSpec.describe Service, type: :model do
  it { should belong_to :category }
  it { should have_many(:executors).dependent(:destroy) }

  it { should validate_presence_of :name }
end
