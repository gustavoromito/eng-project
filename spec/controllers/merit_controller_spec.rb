require 'rails_helper'
require 'rails/test_help'

RSpec.describe MeritsController, type: :controller do
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

			it "retorna 200 como resposta, usuário está logado" do
				sign_in @user
				get :index
				expect(response).to have_http_status "200"
			end
		end

		context "como usuário não autenticado" do

			it "retorna 302 como resposta, usuário não está logado" do
				get :index
				expect(response).to have_http_status "302"
			end

			it "redireciona o usuário não autenticado para a tela de login" do
				get :index
				expect(response).to redirect_to "/devise_scope/users/sign_in"
			end
		end

	end
end
