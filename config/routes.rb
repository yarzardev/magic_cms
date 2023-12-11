Rails.application.routes.draw do
  root "home#show"
  get 'register', to: 'user_registrations#new'
  get 'login' => 'user_sessions#new', :as => :login
  get 'dashboard', to: 'dashboard#show'
  get 'register', to: 'user_registrations#new'
  post 'register/user', to: 'user_registrations#create'
  post 'login' => "user_sessions#create"
  delete 'logout', to: 'user_sessions#destroy', as: :logout
end
