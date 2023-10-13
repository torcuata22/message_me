Rails.application.routes.draw do
  root "chatroom#index"
  get 'chatroom/index'
  get 'chatroom/new'
  get 'chatroom/show'
  get 'chatroom/create'
  get 'chatroom/update'
  get 'chatroom/destroy'
  get 'login', to:'sessions#login'
  get 'sessions/create'
  get 'sessions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "chatrooms#index"
end
