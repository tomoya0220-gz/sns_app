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
 get 'posts/edit/:id', to: 'posts#edit', as: 'edit_posts'
 post 'posts/edit/:id', to: 'posts#update', as: 'update_posts'
 delete 'posts/destroy/:id', to: 'posts#destroy', as: 'destroy_posts'
 get 'posts/show/:post_id/comments/new', to: 'comments#new', as: 'new_comment'
 post 'posts/show/:post_id/comments/new', to: 'comments#create', as: 'create_comment'
 
#TopicsController
 get 'topics/new', to: 'topics#new', as: 'new_topics'
 post 'topics/new', to:  'topics#create', as: 'create_topics'
 get 'topics/edit/:id', to: 'topics#edit', as: 'edit_topics'
 post 'topics/edit/:id', to: 'topics#update', as: 'update_topics'
 get 'topics/index', to: 'topics#index', as: 'index_topics'
 delete 'topics/destroy/:id', to: 'topics#destroy', as: 'destroy_topics'

end