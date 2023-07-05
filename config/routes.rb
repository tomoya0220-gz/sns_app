Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 
# PostsController
 get 'posts/new', to:'posts#new', as:'new_posts'
 post 'posts/new', to: 'posts#create', as: 'create_post'
 get '/', to: 'posts#index', as: 'index_posts'
 post 'posts/new', to: 'posts#create', as: 'create_post'

 
#TopicsController
 get 'topics/new', to:'topics#new', as:'new_topics'
 get 'topics/edit/:id', to:'topics#edit', as:'edit_topics' 
 post 'topics/new', to:'topics#create', as:'create_topics'

end