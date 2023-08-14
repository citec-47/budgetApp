require 'rails_helper'

RSpec.shared_examples 'invalid_when_attribute_is_blank' do |attribute|
  it "is not valid without #{attribute}" do
    @user_one[attribute] = ''
    expect(@user_one).not_to be_valid
  end
end

RSpec.describe User, type: :model do
  before(:all) do
    @user_one = User.new(name: 'Ndonyi Maurice', email: 'mauricendonyi40@gmail.com', password: 12_345_678,
                         password_confirmation: 12_345_678)
  end

  context 'validations' do
    it 'is valid with valid attributes' do
      expect(@user_one).to be_valid
    end

    it_behaves_like 'invalid_when_attribute_is_blank', :name
    it_behaves_like 'invalid_when_attribute_is_blank', :email
  end
end
