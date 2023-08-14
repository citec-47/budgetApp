require 'rails_helper'

RSpec.shared_examples 'invalid when attribute is blank' do |attribute|
  it "is invalid when #{attribute} is blank" do
    @category[attribute] = ' '
    expect(@category).not_to be_valid
  end
end

RSpec.describe Category, type: :model do
  before(:all) do
    @user_one = User.new(name: 'Ndonyi Maurice', email: 'mauricendonyi40@gmail.com', password: 12_345_678,
                         password_confirmation: 12_345_678)
    @category = Category.new(author: @user_one, name: 'contruction',
                             icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-yS-rMfYaDmYTKgsYHqvHHRO0-uHffrxEk0bmnCCxF-fjhLtOVXqUfji05fOf996WR8&usqp=CAU')
  end

  context 'validations' do
    it 'creates a new category' do
      expect(@category).to be_valid
    end

    it_behaves_like 'invalid when attribute is blank', :name
    it_behaves_like 'invalid when attribute is blank', :icon
  end
end
