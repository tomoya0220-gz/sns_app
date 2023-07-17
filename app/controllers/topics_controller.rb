class TopicsController < ApplicationController
  
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to index_topics_path, notice: '削除しました'
  end
  
  def new
    @topic = Topic.new
    render :new
  end

  def create
    @topic = Topic.new(topic_params)
  
    if @topic.save
      redirect_to new_topics_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  
  end
  
  def index
    @title = params[:title]
    if @title.present?
      @topics = Topic.where('title LIKE ?', "%#{@title}%")
    else
      @topics = Topic.all
    end
    render :index
  end

  def edit
    @topic = Topic.find(params[:id])
    render :topic
  end

  def update
    @topic = Topic.find(params[:id])
    if params[:topic]
      @topic.image.attach(params[:topic])
    end
    if @topic.update(topic_params)
      redirect_to index_topics_path, notice: '更新しました'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  private
  def topic_params
    params.require(:topic).permit(:title)
  end
  
  def edit
    render :edit
  end
  
  def update
    redirect_to edit_topics_path
  end
end