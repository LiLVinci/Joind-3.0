class ChatsController < ApplicationController

  def show 
    @chat = Chat.find(params[:id])
    @message = Message.new
    @chats = Chat.all
    skip_authorization
  end

end
