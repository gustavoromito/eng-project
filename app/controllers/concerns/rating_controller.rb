class RatingController < ApplicationController

	def create
		@rating = @event.rating.new : value => params[:value]
		if @rating.save
			redirect_to event_ratings_path(@event), :notice => "Rating terminado."
		else
			redirect_to event_ratings_path(@event), :notice => "Algo deu errado"
		end
	end

	private
    def set_event
      @event = Event.find params[:event_id]
    end
end