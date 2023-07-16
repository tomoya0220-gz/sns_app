Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 
# PostsController
 get 'posts/new', to: 'posts#new', as: 'new_posts'
 get '/', to: 'posts#index', as: 'index_posts'
 post 'posts/new', to: 'posts#create', as: 'create_posts'
 get 'posts/index', to: 'posts#index', as: 'index_Action'
 
#TopicsController
 get 'topics/new', to: 'topics#new', as: 'new_topics'
 get 'topics/edit/:id', to: 'topics#edit', as: 'edit_topics' 
 post 'topics/new', to:  "value"'topics#create', as: 'create_topics'
 post 'topics/edit', to: 'topics#update', as: 'update_topics'
 get 'topics/index', to: 'topics#index', as: 'index_topics'


end