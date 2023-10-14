Rails.application.routes.draw do
  resources :users
  resources :chatroom
  resources :sessions
  root "chatroom#index"
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: :destroy_session
  # You can add other custom routes as needed
end
