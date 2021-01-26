require 'user'

describe User do
  subject(:user) { described_class.new(name, day, month)}
  let(:name) {double name: "Sean"}
  let(:day) {double day: 6}
  let(:month) {double month: 19}

  it { is_expected.to respond_to(:name, :day, :month) }

  describe '#name' do
    it 'returns users name' do
      expect(user.name).to eq(name)
    end
  end

  describe '#day' do
    it 'returns users name' do
      expect(user.day).to eq(day)
    end
  end

  describe '#month' do
    it 'returns users name' do
      expect(user.month).to eq(month)
    end
  end
end
