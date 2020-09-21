class RequestsController < ApplicationController

  def index
    # @requests = policy_scope(Request).order(created_at: :desc)
    # @requests = Request.where(user_id = current_user.id.to_s)
    @incoming_requests = []
    Request.all.each do |request|
      if request.event.user == current_user
        @incoming_requests.push(request)
      end
    end
    # authorize @incoming_requests
    @outgoing_requests = []
    Request.all.each do |request|
      if request.user == current_user
        @outgoing_requests.push(request)
      end
    end
    # authorize @outgoing_requests 
    skip_authorization
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
    # authorize @request
    skip_authorization
    redirect_to requests_path
  end
end
