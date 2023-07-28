class MessagesController < ApplicationController
  def index
    @message = Message.all.order('RANDOM()').first
    render json: @message, status: :ok
  end
end
