# require 'rails_helper'

# # This spec was generated by rspec-rails when you ran the scaffold generator.
# # It demonstrates how one might use RSpec to test the controller code that
# # was generated by Rails when you ran the scaffold generator.
# #
# # It assumes that the implementation code is generated by the rails scaffold
# # generator. If you are using any extension libraries to generate different
# # controller code, this generated spec may or may not pass.
# #
# # It only uses APIs available in rails and/or rspec-rails. There are a number
# # of tools you can use to make these specs even more expressive, but we're
# # sticking to rails and rspec-rails APIs to keep things simple and stable.

# RSpec.describe 'Categories', type: :request do
#   include Devise::Test::IntegrationHelpers

#   let(:user) do
#     User.new(name: 'peter ganye', email: 'petethr@gmail.com', password: 12_345_678, password_confirmation: 12_345_678)
#   end
#   let(:category) do
#     user.categories.new(name: 'cotntructiond',
#                         icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-yS-rMfYaDmYTKgsYHqvHHRO0-uHffrxEk0bmnCCxF-fjhLtOVXqUfji05fOf996WR8&usqp=CAU')
#   end

#   describe 'get categories' do
#     before do
#       sign_in user
#       get categories_path
#     end
#     it 'returns http success' do
#       expect(response).to have_http_status(:success)
#     end

#     it 'renders the :index template' do
#       expect(response).to render_template(:index)
#     end
#   end
# end
