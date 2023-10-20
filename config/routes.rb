Rails.application.routes.draw do
  
  root "chatroom#index"
  resources :users
  resources :chatroom
  resources :sessions
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: :destroy_session
  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
  
end
