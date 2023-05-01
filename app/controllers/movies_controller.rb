class MoviesController < ApplicationController
  def index
    if search_params[:search_ratio].present? || search_params[:keyword].present?
      @movies = @movies.search(search_params)

    else
      @movies = Movie.all
    end
  end

  def show
    @movie = Movie.find(params[:id])
    @schedules = @movie.schedules
  end

  def reservation
    @date = params[:date]
    @schedule_id = params[:schedule_id]

    if @date.present? && @schedule_id.present?
      @reserbvations = Reservation.all
      @sheets = Sheet.all
    else
      flash[:error] = "予約に失敗しました。もう一度やり直してください。"
      redirect_to "/movies/#{params[:movie_id]}", status: 302
    end

  end


  private

  def movie_params
    params.require(:movie).permit(:id, :name, :year, :description, :image_url, :is_showing, :created_at, :updated_at)
  end

  def search_params
    params.permit(:search,:search_radio)
  end

end