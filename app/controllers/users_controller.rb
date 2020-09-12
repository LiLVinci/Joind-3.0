class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def myevents
    skip_authorization
    @myevents = Event.where(user_id = current_user.id.to_s)
  end
end
