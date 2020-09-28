class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  skip_before_action :authenticate_user!, only: [ :show ]

  def index
    # @events = Event.all
    # @events = policy_scope(Event).order(created_at: :desc)
    @events = Event.all.order(created_at: :desc)
    skip_authorization
  end

  def show
    
    @event = Event.find(params[:id])
    @participants = Participation.all.where(event: @event)
    if user_signed_in?
      @request_done = current_user.requests.find_by(event: @event)
    end
    @request = Request.new

    authorize @event


  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.category = Category.find_by(id: params[:event][:category])
    authorize @event
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    authorize @event
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    authorize @event
    redirect_to @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    authorize @event
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :date, :time, :image)
  end
end
