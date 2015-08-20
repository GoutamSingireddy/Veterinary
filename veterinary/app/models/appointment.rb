class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :c_information
  has_one :next_appointment
  validates :date_of_visit, :pet, :customer, :reason_for_visit, :reminder, :doctor_id, :c_information_id, presence: true
end
