class PostsController < ApplicationController
 before_action :authenticate_user!

  def index
    render 'posts/index'
  end
  
   @post = Post.new(post_params)

  if params[:post][:image]
      @post.image.attach(params[:post][:image])
  end
  
  def new
    render :new # renders app/views/posts/new.html.erb
  end

  def create
    redirect_to new_post_path # redirects to GET "/posts/new"
  end

  if @post.save
      redirect_to index_post_path, notice: '登録しました'
  else
      render :new, status: :unprocessable_entity
  end
end

private
def post_params
    params.require(:post).permit(:title, :body, :image)
end
  


