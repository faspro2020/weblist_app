class LinksController < ApplicationController
  def create
    @link = Link.create(link_params)
    redirect_to category_path(params[:category_id])
  end

  # @group = Group.find(params[:group_id])
  # @message = @group.messages.new(message_params)
  # if @message.save
  #   redirect_to group_messages_path(@group), notice: 'メッセージが送信されました'
  # else
  #   @messages = @group.messages.includes(:user)
  #   flash.now[:alert] = 'メッセージを入力してください。'
  #   render :index
  # end

  private
  def link_params
    params.require(:link).permit(:name, :url, :comment, :category_id)
  end
end
