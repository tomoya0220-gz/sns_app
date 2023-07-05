class TopicsController < ApplicationController
  def new
    render :new
  end

  def create
    redirect_to 'new_posts_path'
    redirect_to 'posts/index'
  end

  def edit
    render :edit
  end

  def update
    redirect_to 'topics/edit'
  end
end 