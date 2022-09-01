class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    p @actors[0].image_url
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.create(actor_params)
    redirect_to actors_path
  end

  def actor_params
    params.require(:actor).permit(:name).permit(:bio).permit(:birth_date).permit(:birth_place).permit(:image_url).permit(:alive).permit(:death_date).permit( :death_place)
  end
end
