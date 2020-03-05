class ActorsController < ApplicationController
    def index
        @actors = Actor.all
    end

    def new
        @actor = Actor.new
    end

    def create
         @actor = Actor.new(name: params[:actor][:name], bio: params[:actor][:bio], birth_date: params[:actor][:birth_date], birth_place: params[:actor][:birth_place], image_url: params[:actor][:image_url], alive: params[:actor][:alive], death_date: params[:actor][:death_date], death_place: params[:actor][:death_place])
         @actor.save
         redirect_to :controller => "actors", :action => "index"
    end
end
