class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicule

  validates :start_date, :end_date, presence: true



end
