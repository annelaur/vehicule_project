class Vehicule < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :type_object, :type_of_person, :vehicule_location, presence: true

end
