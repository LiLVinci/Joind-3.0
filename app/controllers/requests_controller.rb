class RequestsController < ApplicationController

  def index
    @requests = policy_scope(Request).order(created_at: :desc)
    # @requests = Request.where(user_id = current_user.id.to_s)
  end
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

  def validate
    @request = Request.find(params[:id])
    @request.update(status: params[:value])
    authorize @request
     
    redirect_to myevents_path
  end
end
