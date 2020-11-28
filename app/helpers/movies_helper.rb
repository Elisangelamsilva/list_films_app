module MoviesHelper
  def exibir_poster(poster_path)
    if poster_path
      "https://image.tmdb.org/t/p/original/#{poster_path}"
    else
      'https://www.joblo.com/assets/images/joblo/database-specific-img-225x333.jpg'
    end

  end
  
end