class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    p @actors[0].image_url
  end

  def show
    @actor = Actor.find(params[:id])
  end
end
