require 'rails_helper'

RSpec.describe User, type: :model do
  let(:name) { 'simple name' }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
end
