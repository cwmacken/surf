Surf::Application.routes.draw do
  resources :users

  root 'users#homepage'

  resources :boards
  post 'boards/order' => 'boards#order'
  get 'boards/order/:id' => 'boards#show'

  get 'users/homepage' => 'users#homepage'

  # what does a get and post do???
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'

  get 'authentications/new' => 'authentications#new'
  post 'authentications' => 'authentications#create'
  delete 'authentications' => 'authentications#destroy'
end
