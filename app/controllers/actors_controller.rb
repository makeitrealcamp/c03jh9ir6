class ActorsController < ApplicationController
	def index				# método que se utiliza para listar los actores según el archivo routes.rb
		@actors = Actor.all # se utiliza el nombre del model es decir Actor, y se guarda todo el registro en la variable @actors
	end

	def new
		@actors = Actor.new #método que se utiliza para crear un nuevo actor según archivo routes.rb
	end

end
