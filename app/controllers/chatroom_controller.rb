class ChatroomController < ApplicationController
  before_action :require_user
  def index
    @message = Message.new
    @messages = Message.custom_display
  end

  def login
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  
end
