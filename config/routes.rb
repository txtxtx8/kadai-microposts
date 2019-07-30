Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users , only: [:new,:index,:show,:create]
  get 'signup',to: 'users#new'
  
  resources :microposts , only: [:create , :destroy]
end
