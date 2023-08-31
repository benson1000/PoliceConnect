Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about'
  get '/background', to: 'pages#background'
  resources :contacts
  get '/vision_mission_core_values', to: 'pages#vision_mission_core_values'
  get 'dashboard', to: 'dashboard#show', as: :dashboard


  devise_scope :user do

    resource :profile, only: [:show, :update]
    patch 'profile', to: 'profiles#update'
  end


  
  root to: 'pages#home'

end
