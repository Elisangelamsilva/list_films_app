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
      flash.now[:alert] = "Arruma isso aí pô"
      render(:new)
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  private

  def profile_params
    params.require(:profile).permit(:name).merge({user_id:current_user.id})
  end

end
