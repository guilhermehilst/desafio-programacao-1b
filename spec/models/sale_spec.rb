require 'rails_helper'

RSpec.describe Sale, type: :model do
  it { should validate_presence_of(:buyer) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:amount) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:provider) }
end
