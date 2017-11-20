require 'rails_helper'

RSpec.describe UserInterest, type: :model do

	describe '.create_interest' do

		context 'when user is nil' do

			let(:user) { create(:user) }

			it 'does not create interest' do
				expect {
					UserInterest.create_interest(user, nil)
				}.to change(UserInterest, :count).by(0)
			end

		end

		context 'when event is nil' do

			let(:event) { create(:event) }

			it 'does not create interest' do
				expect {
					UserInterest.create_interest(nil, event)
				}.to change(UserInterest, :count).by(0)
			end

		end

	end

	def self.create_interest(user, event)
		interest = UserInterest.where(user: user, event: event)
		return unless !interest || interest.count == 0

		UserInterest.create(user: user, event: event)
	end
  
end
