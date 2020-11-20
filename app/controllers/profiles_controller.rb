class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all 
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params).save
    redirect_to profiles_path
  end

  def show

  end

  private

  def profile_params
    params.require(:profile).permit(:name).merge({user_id:current_user.id})
  end

end
