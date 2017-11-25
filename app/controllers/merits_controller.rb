class MeritsController <  ApplicationController
	before_action :authenticate_user!
	
	def index
		@merits = Merit.all
	end
	
	def create
		@merit = Merit.new(merit_params)
	end

	private 

		def merit_params
			params.require(:merit).permit(:name, :points, :achievement, :image)
		end

end