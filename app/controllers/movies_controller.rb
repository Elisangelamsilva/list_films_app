class MoviesController < ApplicationController
  def index
    @profile = Profile.find(params[:profile_id])
  end

  def search
    busca = RestClient.get 'https://api.themoviedb.org/3/search/movie', { params: { api_key: '9dfb9439b9b75b6bfb4562a044d050ba', query: params[:filme] } }

    @movies = busca.body
  end
end