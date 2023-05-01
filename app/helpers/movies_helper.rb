module MoviesHelper
  def check_reservations(reservations, date, schedule)
    result = true
    reservations_count = reservations.count
    if reservations_count > 1
      reserved_sheets = reservations.where(date: date).where(schedule_id: schedule).pluck(:sheet_id)
      return reserved_sheets
    else
      reserved_sheets = [1000]
      return reserved_sheets
    end
  end
end
