require 'rails_helper'

RSpec.shared_examples 'invalid_when_attribute_is_blank' do |object, attribute|
  it "is not valid without #{attribute}" do
    object[attribute] = ' '
    expect(object).not_to be_valid
  end
end

RSpec.describe Expenditure, type: :model do
  before(:all) do
    @user_one = User.new(name: 'Ndonyi Maurice', email: 'mauricendonyi40@gmail.com', password: 12_345_678,
                         password_confirmation: 12_345_678)
    @category = Category.new(author: @user_one, name: 'contruction',
                             icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-yS-rMfYaDmYTKgsYHqvHHRO0-uHffrxEk0bmnCCxF-fjhLtOVXqUfji05fOf996WR8&usqp=CAU')
    @expenditue = Expenditure.new(author: @user_one, name: 'fundation', amount: 345)
  end

  context 'validations' do
    it 'is valid with valid attributes' do
      expect(@expenditue).to be_valid
    end

    it_behaves_like 'invalid_when_attribute_is_blank', @expenditue, :name
    it_behaves_like 'invalid_when_attribute_is_blank', @expenditue, :amount
  end
end
