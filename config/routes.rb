Rails.application.routes.draw do
  scope "(:locale)", locale: /en|it/ do

    #root 'users#show'
    root 'homepage#index'

    #get 'users/show'
    get 'users/show', as: :user_root # creates user_root_path (default path after sign_in)
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
end
