Surf::Application.routes.draw do
  resources :boards


  # what does a get and post do???
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'

  get 'authentications/new' => 'users#new'
  post 'authentications' => 'authentications#create'
end
