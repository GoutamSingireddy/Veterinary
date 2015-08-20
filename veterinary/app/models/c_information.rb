class CInformation < ActiveRecord::Base
  has_many :appointments
  validates :name_of_pet, :type_of_pet, :breed, :pet_age, :pet_weight, :appointment, presence: true 
end
