Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/actors', to: 'actors#index'
  get '/actors/new', to: 'actors#new', as: 'new_actor'
  post '/actors', to: 'actors#create'
end
