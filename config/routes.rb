Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about'
  get '/background', to: 'pages#background'
  resources :contacts
  get '/vision_mission_core_values', to: 'pages#vision_mission_core_values'
  get 'dashboard', to: 'dashboard#show', as: :dashboard

  devise_scope :user do
    get 'profile', to: 'users/registrations#new_profile'
    post 'profile', to: 'users/registrations#create_profile'
  end

  resource :profile, only: [:show, :update]
  patch 'profile', to: 'profiles#update'


  
  root to: 'pages#home'

end
