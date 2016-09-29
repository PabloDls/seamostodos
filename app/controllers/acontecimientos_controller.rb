class AcontecimientosController < ApplicationController

	def index
	end

	def new
	end

	def create
		@picture = Acontecimiento.new(params_picture)
		@picture.save

		redirect_to eventos_path
	end


	def destroy
		@picture = Acontecimiento.find(params[:id])
		@picture.destroy
	end

	private

	def params_picture
		params.require(:acontecimiento).permit(:image)
	end

end
