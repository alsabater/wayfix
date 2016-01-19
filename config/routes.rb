Rails.application.routes.draw do
  root 'dashboard#index'

  get 'signup', to: 'users#new'

  resources :users

end
