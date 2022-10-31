Rails.application.routes.draw do
  resources :profiles
  resources :cohorts
  resources :members
  resources :users
  resources :projects

  #  get all individual user projects
  get 'myprojects', to: 'projects#my_project'
   get 'myprofile', to: 'profiles#my_profile'
   get 'mymember/:project_id', to: 'members#my_member'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :projects
  # mount_devise_token_auth_for 'User', at: 'auth'
  # Defines the root path route ("/")
  # root "articles#index"
   post '/signup', to: 'users#create'
  get '/me', to: 'users#show'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
