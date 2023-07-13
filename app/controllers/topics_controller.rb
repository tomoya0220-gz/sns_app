class TopicsController < ApplicationController
  def new
    @topic = Topic.new
    render :new
  end

  def create
    @topic = Topic.new(topic_params)
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