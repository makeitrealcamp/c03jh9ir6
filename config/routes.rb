Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/actors' => 'actors#actors'
  get '/actors/new' => 'actors#new'
  post '/actors' => 'actors#create'
end
