class ReviewsController < ApplicationController
	before_action :find_event

	def new
		@review = Review.new
	end

	def show
	end

	def create
		@review = Review.new(review_params)
		@review.event_id = @event.id
		@review.user_id = current_user.id

		if @review.save
			redirect_to event_path(@event)
		else
			render 'new'
		end
	end

	private

		def review_params
			params.require(:review).permit(:rate, :commentary)
		end

		def find_event
			@event = Event.find(params[:event_id])
		end

end