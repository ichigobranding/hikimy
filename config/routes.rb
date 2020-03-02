Rails.application.routes.draw do

  get '/users/:id/edit', to: 'users#edit'
  post '/users/:id/update', to: 'users#update'
  post '/users/:id/destroy', to: 'users#destroy'
  get '/signup', to: 'users#new'
  post  '/signup',   to: 'users#create'
  get '/users/:id', to: 'users#show'
  # post '/users/create', to:'users#create'

  get '/users', to: 'users#index'

  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new'
  get '/posts/:id/edit', to: 'posts#edit'
  post '/posts/:id/update', to: 'posts#update'
  post '/posts/:id/destroy', to: 'posts#destroy'
  get '/posts/:id', to: 'posts#show'
  post '/posts/create', to: 'posts#create'
  get '/', to: 'posts#index'
  # get '/', to: 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end