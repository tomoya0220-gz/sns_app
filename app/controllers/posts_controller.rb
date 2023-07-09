class PostsController < ApplicationController
  before_action :authenticate_user!
 
  def index
    @title = params[:title]
    if @title.present?
      @posts = Post.where('title LIKE ?', "%#{@title}%")
    else
      @posts = Post.all
    end
    render :index
  
  end
  
  def new
    @posts = Post.new
    render :new
  end

  def create
    @posts = Post.new(post_params)

    if params[:post][:image]
      @posts.image.attach(params[:post][:image])
    end

    if @posts.save
      redirect_to index_post_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
end


