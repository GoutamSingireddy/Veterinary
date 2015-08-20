class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :c_informations, :through => :appointments 
  validates :name ,length: {maximum: 35 }
  validates :years_of_practice, length: {maximum: 100} 
end
