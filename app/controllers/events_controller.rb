class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    # authorized @event
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    #authorize @event
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    #authorize @event
    redirect_to @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.update(event_params)
    # authorize @event
    redirect_to @event
  end

  private

  def event_params
    params.require.permit(:title, :description, :location, :date, :time, :image)
  end
end
