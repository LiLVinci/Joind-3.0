class ChatsController < ApplicationController

  def show 
    @chat = Chat.find(params[:id])
    @message = Message.new
    @chats = Chat.all
    @user = current_user
    skip_authorization
  end

  def index
    @chats = Chat.all
    skip_authorization
  end 

end
