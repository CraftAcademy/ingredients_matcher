require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name}
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name}
  end

  describe 'Factory' do
    it 'should have valid Factory' do
    expect(create(:item)).to be_valid
    end
  end
end
