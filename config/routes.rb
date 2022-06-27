Rails.application.routes.draw do
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy'

  get '/draw', to: 'top#show'
  root 'top#index'
  resources :posts do
    collection do
      get :favorites
    end
  end
  resources :users, only: %i[new create show]
  resources :favorites, only: %i[create destroy]
end
