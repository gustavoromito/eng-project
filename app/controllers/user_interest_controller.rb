class UserInterestController < ApplicationController

	def create
	  u = User.find params[:user_id]
	  e = Event.find params[:event_id]

	  @interest = UserInterest.new(user: u, event: e)
	  respond_to do |format|

	    if !UserInterest.create_interest(u, e)
	      	format.json { render json: @interest.errors, status: :unprocessable_entity }
	    else
	    	format.html { redirect_to e, notice: 'Interested was successfully created.' }
	    end

	  end
	end


	private
	# Never trust parameters from the scary internet, only allow the white list through.
    def interest_params
      params.require(:user_id, :event_id)
    end

end
