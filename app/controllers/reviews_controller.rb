class ReviewsController < ApplicationController
	before_action :find_event

	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
	end

	private

		def review_params
			params.require(:review).permit(:rate, :commentary)
		end

		def find_event
			@event = Event.find(params[:event_id])
		end

end