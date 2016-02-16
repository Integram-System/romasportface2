Rails.application.routes.draw do

  root 'blogs#index'

  resources :blogs

  get 'mocks/blog_small'
  get 'mocks/blog_single_small'
  get 'mocks/index'
  get 'mocks/index_magazine'
end
