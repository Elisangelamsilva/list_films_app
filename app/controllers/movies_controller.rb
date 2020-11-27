class MoviesController < ApplicationController
  def index
    @profile = Profile.find(params[:profile_id])
  end

  def search
    busca = RestClient.get 'https://api.themoviedb.org/3/search/movie', { params: { api_key: '9dfb9439b9b75b6bfb4562a044d050ba', query: params[:filme] } }

    
    @movies = JSON.parse(busca.body)
      
  end

  # listar db do model => model.all
  # 
  def watch
    watch = Movie.new(movie_params)

  end

  def watched
  end

  private

  def movie_params
    permitted = params.permit(:title,:original_language,:overview,:popularity,:poster_path,:adult,:id,:release_date)
    permitted.tap do |p|
      p[:popularity] = p[:popularity]
      p[:api_id] = p["id"]
      p.delete(:id)
      p[:release_at] = p["release_date"]
      p.delete(:release_date)
    end
  end

end