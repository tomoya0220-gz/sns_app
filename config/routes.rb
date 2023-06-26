Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 get 'posts/new', to: 'posts#new', as: 'new_post'

#TopicsController
 get 'posts/new', to: 'Topics#new', as: 'new_post'
 
#TopicsController
 get 'posts/new', to: 'Topics#new', as: 'edit_post'
 end
