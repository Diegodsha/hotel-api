require 'rails_helper'

RSpec.describe Hotel, type: :model do
  let(:name) { 'simple name' }

  it { should have_many(:reviews).dependent(:destroy) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:img_url) }
  it { should validate_presence_of(:price_nigth) }
  it { should validate_presence_of(:services) }
end
