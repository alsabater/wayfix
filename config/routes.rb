Rails.application.routes.draw do
  
  root 'users#show'

  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'

  resources :users

end
