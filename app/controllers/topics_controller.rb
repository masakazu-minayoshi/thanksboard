class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :destroy, :edit, :update]

  def index
    @topics = Topic.order('created_at DESC').page(params[:page]).per(3)
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def show
  end

  def destroy
    if @topic.destroy
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    if @topic.update(topic_update_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :text).merge(user_id: current_user.id)
  end

  private
  def topic_update_params
    params.require(:topic).permit(:title, :text).merge(user_id: current_user.id)
  end

end
