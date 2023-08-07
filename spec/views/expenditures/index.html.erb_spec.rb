require 'rails_helper'

RSpec.describe 'expenditures/index', type: :view do
  before(:each) do
    assign(:expenditures, [
             Expenditure.create!(
               name: 'Name',
               amount: 2.5
             ),
             Expenditure.create!(
               name: 'Name',
               amount: 2.5
             )
           ])
  end

  it 'renders a list of expenditures' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
  end
end
