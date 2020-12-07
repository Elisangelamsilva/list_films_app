class MoviesController < ApplicationController
  def index
    @profile = Profile.find(params[:profile_id])
    @movies = Movie.where(profile_id: @profile.id)
  end

  def search
    busca = RestClient.get 'https://api.themoviedb.org/3/search/movie', { params: { api_key: '9dfb9439b9b75b6bfb4562a044d050ba', query: params[:filme] } }

    @profile_id = params[:profile_id]
    
    @movies = JSON.parse(busca.body)
      
  end

  # listar db do model => model.all
  # 
  def create
    @movie = Movie.find_by(api_id: movie_params[:api_id])
    if @movie
      @movie.update(movie_params)
    else
      @movie = Movie.new(movie_params)
      @movie.save
    end
    @profile = Profile.find(params[:profile_id])
  end

  def destroy
    Movie.delete(params[:id])
    redirect_to movies_path(profile_id: params[:profile_id])
  end

  private

  def movie_params
    permitted = params.permit(:title,:original_language,:overview,:popularity,:poster_path,:adult,:id,:release_date, :profile_id, :status)
    permitted.tap do |p|
      p[:popularity] = p[:popularity] if p[:popularity]
      p[:api_id] = p["id"]
      p.delete(:id)
      p[:release_at] = p["release_date"] if p["release_date"] 
      p.delete(:release_date)
    end
  end

end
