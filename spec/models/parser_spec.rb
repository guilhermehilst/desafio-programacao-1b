RSpec.describe Parser, type: :model do

  describe '#parse_file' do
    let(:parse){ FactoryGirl.build :parse }
    before {
      @sales, @total = parse.parse_file
    }

    it { expect(@sales).to all(be_a(Sale)) }
    it { expect(@sales).not_to be_empty }
    it { expect(@total).to eq(95) }
  end
end