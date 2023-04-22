class MoviesController < ApplicationController
  def index
    
    if search_params[:search_ratio].present? || search_params[:keyword].present?
      @movies = @movies.search(search_params)

    else
      @movies = Movie.all
    end
  end

  private

  def search_params
    params.permit(:keyword, :search_radio)
  end
end