Rails.application.routes.draw do
  root 'events#index'
  devise_for :users
  resources :users
  
  resources :events do
    resources :participations
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
