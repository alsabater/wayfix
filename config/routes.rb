Rails.application.routes.draw do
  
  root 'sessions#new'

  get 'signup', to: 'users#new'

  get 'users/settings', to: 'users#settings'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'

  resources :users
  resources :clients

end
