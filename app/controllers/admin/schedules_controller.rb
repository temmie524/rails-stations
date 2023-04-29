class Admin::SchedulesController < ApplicationController
  protect_from_forgery 

  def index
    @movies = Movie.all
    @schedules = Schedule.all
  end
  
  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])

    if @schedule.update(schedule_params)
      flash[:success] = "Schedule updated"
      redirect_to "/admin/schedules"
    else
      flash[:notice] = '登録に失敗しました'
      redirect_to "/admin/schedules/#{params[:movie_id]}"
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    if @schedule.destroy
      flash[:notice] = '削除しました'
      redirect_to "/admin/schedules"
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year, :description, :image_url, :is_showing, :created_at, :updated_at)
  end
  
  def schedule_params
    if params[:schedule].present?
      params.require(:schedule).permit(:movie_id, :start_time, :end_time).merge(start_time: Time.zone.parse(params[:schedule][:start_time]))
    else
      {}
    end
  end

end
