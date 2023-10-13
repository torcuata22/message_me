Rails.application.routes.draw do
  get 'chatroom/index'
  get 'chatroom/new'
  get 'chatroom/show'
  get 'chatroom/create'
  get 'chatroom/update'
  get 'chatroom/destroy'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
