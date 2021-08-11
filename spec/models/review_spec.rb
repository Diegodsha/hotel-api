require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:name) { 'simple name' }

  it { should belong_to(:user) }
  it { should validate_presence_of(:title) }
end
