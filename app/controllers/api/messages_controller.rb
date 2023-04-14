class Api::MessagesController < ApplicationController
  def index
    # get all messages
    render json: Message.all, status: :ok
  end

  def show
    # get a single message
    @message = Message.find(params[:id])
    render json: @message, status: :ok
  end

  def create
    # create a new message
    Message.create(message_params)

    render json: @message, status: :ok
  end

  def destroy
    # delete a message
    Message.find(params[:id]).destroy

    head :no_content
  end

  def update
    @message = Message.find(params[:id])
    @message.update(message_params)

    render json: @message, status: :ok
  end

  def random
    @message = Message.order('RANDOM()').first

    render json: @message, status: :ok
  end

  private

  def message_params
    params.require(:message).permit(:content, :header)
  end
end
