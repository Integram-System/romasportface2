Rails.application.routes.draw do
  resources :blogs
  root 'mocks#index'
  get 'mocks/blog_small'
  get 'mocks/blog_single_small'
end
