class Admin::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all 
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash[:notice] = '予約を追加しました'
      redirect_to '/admin/reservations'  
    else
      flash[:notice] = 'すでに登録されている作品です'
      redirect_to '/admin/reservations', status: 400
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      flash[:notice] = "Reservation updated"
      redirect_to "/admin/reservations"
    else
      flash[:notice] = '登録に失敗しました'
      redirect_to "/admin/reservations/#{params[:id]}"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    if @reservation.destroy
      redirect_to "/admin/reservations"
      flash[:notice] = '予約を削除しました'
    end
  end
    
  private

  def reservation_params
    params.require(:reservation).permit(:id, :date, :schedule_id, :sheet_id, :email, :name, :created_at, :updated_at)
  end
end
