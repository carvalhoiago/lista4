Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  scope 'directors' do
    get '/show/:id', to: 'directors#show', as: 'show_directors'
    post '/create', to: 'directors#create', as: 'create_directors'
  end

  scope 'movies' do
    get '/index', to: 'movies#index', as: 'index_movies'
    get '/show/:id', to: 'movies#show', as: 'show_movies'
    delete '/destroy/:id', to: 'movies#destroy', as: 'destroy_movies'
    post '/create', to: 'movies#create', as: 'create_movies'
    patch '/update/:id', to: 'movies#update', as: 'update_movie'
  end

end
