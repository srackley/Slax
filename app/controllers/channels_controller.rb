class ChannelsController < ApplicationController
  def index
    @channels = Channel.all
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = current_user.channels.build(channel_params)
    if @channel.save
      flash[:success] = 'Channel added!'
      redirect_to channels_path
    else
      render 'new'
    end
  end

  def show
    @channel =
    Channel.includes(:messages).find_by(id: params[:id])
  end

  private

  def channel_params
    params.require(:channel).permit(:title)
  end
end
