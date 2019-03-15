require 'rails_helper'

RSpec.describe Category, type: :model do
	describe 'DB table' do
    it { is_expected.to have_db_column :name }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_uniqueness_of :name }
		it { should_not allow_value("weather").for(:name) }
		it { should allow_value("sports").for(:name) }
	end

	describe 'Associations' do
		it { should have_many(:articles) }
	end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:category)).to be_valid
    end
  end
end
