Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about'
  get '/background', to: 'pages#background'
  get '/vision_mission_core_values', to: 'pages#vision_mission_core_values'
  get '/contact', to: 'pages#contact'
  root to: 'pages#home'
end
