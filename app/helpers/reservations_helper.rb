module ReservationsHelper
  def movie_search(reservation_id)
    @reservation = Reservation.find(reservation_id)
    @schedule = Schedule.find(@reservation.schedule_id)
    @movie = Movie.find(@schedule.movie_id)
    return @movie.name
  end

  
end
