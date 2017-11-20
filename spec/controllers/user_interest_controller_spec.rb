require 'rails_helper'

RSpec.describe UserInterestController, type: :controller do

	describe 'POST #create' do

		let(:event) { create(:event) }
		let(:user) { create(:user) }

		context 'with valid params' do

			it "creates a new UserInterest in Event" do
		        expect {
		          post :create, params: { event_id: event.id, user_id: user.id }, format: "json"
		    	}.to change(UserInterest, :count).by(1)
		    end

		end

		context 'with invalid params' do

			it "does not create UserInterest" do
		        expect {
		          post :create, params: { event_id: event.id, user_id: 0 }, format: "json"
		    	}.to change(UserInterest, :count).by(0)
		    end

		end
	end

end
