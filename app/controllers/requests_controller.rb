class RequestsController < ApplicationController
  def create
      @request = Request.new
      @event = Event.find(params[:event_id])
      @request.event = @event
      @request.user = current_user
      authorize @request
    
    if @request.save!
      redirect_to event_path(@event)
    else
      render :show
    end
  end
end
