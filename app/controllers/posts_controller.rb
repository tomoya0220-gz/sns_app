class PostsController < ApplicationController
  before_action :authenticate_user!
 
  def index
    render 'posts/index'
  end
  
  
  def new
    render :new # renders app/views/posts/new.html.erb
  end

  def create
    redirect_to new_post_path # redirects to GET "/posts/new"
  end

  

  private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
end


