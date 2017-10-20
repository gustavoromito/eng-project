class CommonController < ApplicationController

	def update(reference, message, referencep)
	  respond_to do |format|
      if reference.update(referencep)
        format.html { redirect_to reference, notice: message }
        format.json { render :show, status: :ok, location: reference }
      else
        format.html { render :edit }
        format.json { render json: reference.errors, status: :unprocessable_entity }
      end
	  end
	end

    def destroy(reference, message, redirectp)
    	reference.destroy
    	respond_to do |format|
      		format.html { redirect_to redirectp, notice: message}
      		format.json { head :no_content }
    	end
    end

end