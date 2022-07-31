Rails.application.routes.draw do
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy'

  get '/draw', to: 'knitting_diagrams#new'
  post '/draw', to: 'knitting_diagrams#create'
  get '/draws', to: 'knitting_diagrams#index'
  get '/privacy', to: 'top#privacy'
  get '/service', to: 'top#service'
  root 'top#index'
  resources :posts do
    collection do
      get :favorites
    end
    get 'search', on: :collection
  end
  resources :users, param: :public_uid, only: %i[new create show]
  resources :favorites, only: %i[create destroy]
end
