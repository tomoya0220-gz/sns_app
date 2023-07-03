class PostsController < ApplicationController
  def new
    render :new
  end
  
  def index
    render :index
  end
  
  def create
    redirect_to 'posts/index'
  end
  
end

