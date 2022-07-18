require 'rails_helper'

RSpec.describe Order, type: :model do
  it { should belong_to :executor }
  it { should belong_to :basket }
  it { should have_and_belong_to_many(:services) }

  it { should validate_presence_of :client }
end
