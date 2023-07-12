class TopicsController < ApplicationController
  def new
    @topic = Topic.new
    render :new
  end

  def create
    @topic = Topic.new(topic_params)

    if params[:topic][:image]
      @topic.image.attach(params[:topic][:image])
    end

    if @topic.save
      redirect_to index_topic_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :body, :image)
  end

  def edit
    render :edit
  end

  def update
    redirect_to edit_topics_path
  end
end 