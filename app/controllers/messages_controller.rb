class MessagesController < ApplicationController
  
    def create
      @message = Message.new(message_params)
      @message.user = current_user

      puts "Current User ID: #{current_user&.id}" # Add this line for debugging

      if @message.save
        redirect_to root_path
      else
        render 'index'
      end
    end

    private

    def message_params
        params.require(:message).permit(:body)
    end


end
  
