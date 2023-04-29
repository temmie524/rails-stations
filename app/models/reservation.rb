class Reservation < ApplicationRecord
  belongs_to :schedule
  belongs_to :sheet

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, format: { with: VALID_EMAIL_REGEX }}
  validates :name, presence: true
  validates :date, uniqueness: { scope: [:schedule_id, :sheet_id] }

end
