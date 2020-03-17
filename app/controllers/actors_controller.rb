class ActorsController < ApplicationController
  def index
    @actores = Actor.all
    render 'layouts/index'
  end
end
