class MessagesController < ApplicationController
  before_filter :require_authentication, :only => [:create, :destroy]

  def index
    @message = current_user && current_user.messages.build
    @messages = Message.new_to_old.limit(100)
  end

  def create
    message = current_user.messages.build(params[:message])

    if message.save
      payload = render_to_string(:partial => "messages/message.html", :locals => {:message => message})
      Pusher["chat"].trigger("message", payload)
    else
      head :unprocessable_entity
    end
  end

  def destroy
  end
end
