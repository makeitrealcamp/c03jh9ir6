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
    new_actor = {
      name: params[:actor][:name],
      bio: params[:actor][:bio],
      birth_date: params[:actor][:birth_date],
      birth_place: params[:actor][:birth_place],
      image_url: params[:actor][:image_url],
      alive: params[:actor][:alive],
      death_date: params[:actor][:death_date],
      death_place: params[:actor][:death_place]
    }
    @actor = Actor.create(new_actor)
    redirect_to actors_path
  end

end
