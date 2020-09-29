class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_events = @user.events
    authorize @user
  end

  def events_overview
    skip_authorization
    @user = current_user
    
    @myevents = Event.where(user_id = current_user.id.to_s)
    @upcoming_events = []
    Event.all.each do |event|
      participations = event.participations 
      if event.date.between?(Date.today, Date.today.next_week)
        event.participations
        if event.user == @current_user
          @upcoming_events.push(event)
        # elsif event.participations.include?(user_id == @user)
        #   @upcoming_events.push(event)
        end
        participations_soon = event.participations.where(user_id == @user)
        participations_soon.each do |participation|
          @upcoming_events.push(participation.event)
        end
      end
    end
    @my_requests = []
    @user.requests.each do |request|
      if request.status == "pending"
        @my_requests.push(request.event)
      end
    end
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    authorize @user
    redirect_to @user
  end

  private 

  def user_params
    params.require(:user).permit(:name, :description, :age, :gender, :email, :instagram, :facebook, :linkedin, :image)
  end
end

# raise 