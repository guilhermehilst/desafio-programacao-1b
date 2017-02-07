RSpec.describe Parser, type: :model do

  describe '#parse_file' do
    let(:parser){ FactoryGirl.build :parser }
    before {
      @sales, @total = parser.parse_file
    }

    it { expect(@sales).to all(be_a(Sale)) }
    it { expect(@sales).not_to be_empty }
    it { expect(@total).to eq(95) }
  end
end