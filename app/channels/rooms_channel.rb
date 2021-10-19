class RoomsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    @room = Room.find_by_id(params[:id])
    stream_from @room 
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
