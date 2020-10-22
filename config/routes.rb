Rails.application.routes.draw do
	get '/actors' , to: 'actors#index'
	get '/actors/new', to: 'actors#new', as: 'new_actor'
	post '/actors' => 'actors#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
