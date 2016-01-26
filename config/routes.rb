Rails.application.routes.draw do
  root 'mocks#index'
  get 'mocks/blog_small'
  get 'mocks/blog_single_small'
end
