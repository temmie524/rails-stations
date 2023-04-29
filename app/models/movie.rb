class Movie < ApplicationRecord
  has_many :schedules
  validates :name, uniqueness: true

  def self.search(search_params)
    @movies = Movie.all

    if search_params[:search_radio] == '1'
      @movies = @movies.where("is_showing LIKE ?", "1")
    
    elsif search_params[:search_radio] == '0'
      @movies = @movies.where("is_showing LIKE ?", "0")

    else
      @movies = @movies.all
    end

    if search_params[:keyword].present?
      @keyword = "%#{search_params[:keyword]}%"
      @movies = @movies.where("name LIKE ? OR description LIKE ?", @keyword, @keyword)

    end

  end
end
