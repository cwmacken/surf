Surf::Application.routes.draw do
  resources :users

  root 'users#homepage'

  resources :boards
  post 'boards/order' => 'boards#order'
  get 'boards/order/:id' => 'boards#show'
  get 'boards/:id/assign_shaper/:producer_id' => 'boards#assign_shaper'

  get 'users/homepage' => 'users#homepage'

  get 'users/show' => 'users#show'
  
  # what does a get and post do???
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'
  #get 'users/edit' => 'users/#edit'
  #post 'users' => 'users/#edit'
  post'users/edit' => 'users#update'




  get 'authentications/new' => 'authentications#new'
  post 'authentications' => 'authentications#create'
  delete 'authentications' => 'authentications#destroy'
end
