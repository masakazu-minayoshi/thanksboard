class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
    def message_params
      params.require(:message).permit(:thx_id, :text)
    end

end
