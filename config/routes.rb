Rails.application.routes.draw do
  resources :cohorts
  resources :members
  resources :projects
  mount_devise_token_auth_for 'User', at: 'auth'
  #  get all individual user projects
  get 'myprojects', to: 'projects#my_project'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :projects
  # mount_devise_token_auth_for 'User', at: 'auth'
  # Defines the root path route ("/")
  # root "articles#index"
end
