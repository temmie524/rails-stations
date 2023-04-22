class Admin::MoviesController < ApplicationController
  protect_from_forgery 

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to '/admin/movies'  
    else
      flash[:notice] = 'すでに登録されている作品です'
      redirect_to '/admin/movies/new'
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      flash[:success] = "Profile updated"
      redirect_to "/admin/movies"
    else
      flash[:notice] = '登録に失敗しました'
      redirect_to "/admin/movies/#{params[:id]}"
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      flash[:notice] = '削除しました'
      redirect_to "/admin/movies"
    end
  end

  #いそうなので残しているが消すかも
  def search
    @movies = Movie.search(search_params)
  end
  
  private

  def movie_params
    params.require(:movie).permit(:id, :name, :year, :description, :image_url, :is_showing, :created_at, :updated_at)
  end

  #いそうなので残しているが消すかも
  def search_params
    params.require(:movie).permit(:search,:search_radio)
  end

end
