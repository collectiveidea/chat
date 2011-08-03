class MessagesController < ApplicationController
  def index
    @messages = Message.new_to_old
  end

  def create
  end

  def destroy
  end
end
