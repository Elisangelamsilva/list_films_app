class MoviesController < ApplicationController
  def index
      @profile = Profile.find(params[:profile_id])
  end
end