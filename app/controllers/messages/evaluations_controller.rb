class Messages::EvaluationsController < ApplicationController
  before_action :set_message

  def update
    @message.update!(message_params)
  end

  private

  def set_message
    @message = Message.find(params[:message_id])
  end

  def message_params
    params.require(:message).permit(:evaluation)
  end
end
