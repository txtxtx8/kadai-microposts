Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  resources :users , only: [:new,:index,:show,:create]
  get 'signup',to: 'users#new'
end
