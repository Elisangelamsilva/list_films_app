class ProfilesController < ApplicationController
  def index
    @profiles = Profile.where({user_id:current_user.id})
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to profiles_path
    else 
      flash.now[:alert] = "Dados inválidos"
      render(:new)
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def destroy
    Profile.delete(params[:id])
    redirect_to profiles_path
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :avatar).merge({user_id:current_user.id})
  end

end
