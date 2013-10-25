Surf::Application.routes.draw do
  root 'users#new'

  resources :boards


  # what does a get and post do???
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'

  get 'authentications/new' => 'authentications#new'
  post 'authentications' => 'authentications#create'
  delete 'authentications' => 'authentications#destroy'
end
