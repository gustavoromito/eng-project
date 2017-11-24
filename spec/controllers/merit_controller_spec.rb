require 'rails_helper'
require 'rails/test_help'

RSpec.describe MeritController, type: :controller do
	describe "#index" do

		context "como um usuário autenticado" do

			before do
				@user = FactoryBot.create(:user)
			end

			it "responde com sucesso" do
				sign_in @user
				get :index
				expect(response).to be_success
			end

			it "retorna 200 como resposta" do
				sign_in @user
				get :index
				expect(response).to have_http_status "200"
			end
		end
	end
end
