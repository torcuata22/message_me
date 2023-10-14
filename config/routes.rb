Rails.application.routes.draw do
  resources :users
  resources :chatroom
  resources :sessions
  root "chatroom#index"
  # You can add other custom routes as needed
end
