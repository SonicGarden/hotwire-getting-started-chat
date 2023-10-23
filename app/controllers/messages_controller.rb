class MessagesController < ApplicationController
  before_action :set_message, only: %i(edit update destroy)

  def index
    @messages = Message.order(:id)
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    unless @message.save
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @message.update(message_params)
      redirect_to messages_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @message.destroy!
    flash.now[:alert] = '削除しました'
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def set_message
    @message = Message.find(params[:id])
  end
end
