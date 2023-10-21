class MessagesController < ApplicationController
    before_action :require_user

    def create
        
      @message = Message.new(message_params)
      @message.user = current_user

      if @message.save
        ActionCable.server.broadcast "chatroom_channel", {mod_message: message_render(@message)}
      else
        render 'index'
      end
      
    end

    private

    def message_params
        params.require(:message).permit(:body)
    end

    def message_render(message)
      render(partial: 'message', locals: {message: message})
    end
end
  

