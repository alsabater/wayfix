Rails.application.routes.draw do
  root 'dashboard#index'

  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'signout', to: 'sessions#destroy'

  resources :users

end
