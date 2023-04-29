class ReservationsController < ApplicationController
  protect_from_forgery 
  rescue_from ActiveRecord::RecordNotUnique, with: :redirect_to_reservation

  
  def new
    date = params[:date]
    sheet_id = params[:sheet_id]
    if date.present? && sheet_id.present?
      @reservation = Reservation.new
      @selected_movie = Movie.find(params[:movie_id])
      @selected_schedule = Schedule.find(params[:schedule_id])
      @selected_sheet = Sheet.find(params[:sheet_id])
      @selected_date = params[:date]
    else
      redirect_to "/movies/#{params[:movie_id]}", status: 302
    end
  end

  
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to "/movies/#{params[:movie_id]}dd"  , status: 302
      flash[:notice] = "予約に成功しました"
  
    else 
      redirect_to_reservation
    end
  end

  def redirect_to_reservation
    date = params[:reservation][:date]
    schedule = params[:reservation][:schedule_id]
    movie = params[:reservation][:movie_id]
    redirect_to "/movies/#{movie}/reservation?schedule_id=#{schedule}&date=#{date}"
    flash[:error] = "その座席はすでに予約済みです"
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :schedule_id, :sheet_id, :name, :email)
  end   
end
