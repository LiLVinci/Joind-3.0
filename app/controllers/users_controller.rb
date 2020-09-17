class UsersController < ApplicationController

  def show
    @user = current_user
    authorize @user
  end

  def myevents
    skip_authorization
    @myevents = Event.where(user_id = current_user.id.to_s)
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
