class ActorsController < ApplicationController
	def index				# método que se utiliza para listar los actores según el archivo routes.rb
		@actors = Actor.all # se utiliza el nombre del model es decir Actor, y se guarda todo el registro en la variable @actors
	end
	def new
		@actors = Actor.new
	end
	def create
		@actors = Actor.new(actors_params)
		if @actors.save
			redirect_to actors_path, notice: "Proceso exitoso"
		else
			render :new
		end
	end
	private
	def actors_params
		params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
	end
end
