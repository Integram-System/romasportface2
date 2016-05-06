Rails.application.routes.draw do

  #root 'users#show'
  root 'homepage#index'

  #get 'users/show'

  devise_for :users
  resources :users

  resources :posts

  resources :blogs

  get 'mocks/blog_small'
  get 'mocks/blog_single_small'
  get 'mocks/blog_single_small01'
  get 'mocks/index'
  get 'mocks/index_magazine'
end
