Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about'
  get '/background', to: 'pages#background'
  resources :contacts
  get '/vision_mission_core_values', to: 'pages#vision_mission_core_values'
  get 'dashboard', to: 'dashboards#show', as: :dashboard

  get '/profile', to: 'profiles#show'
   # Define routes for editing and updating profiles
  devise_scope :user do
    resource :profile, only: [:edit, :update] # Singular resource for profile
  end

  root to: 'pages#home'

end
