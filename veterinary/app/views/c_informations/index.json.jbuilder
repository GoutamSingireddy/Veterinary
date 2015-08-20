json.array!(@c_informations) do |c_information|
  json.extract! c_information, :id, :name_of_pet, :type_of_pet, :breed, :Pet_age, :pet_weight, :appointment_id
  json.url c_information_url(c_information, format: :json)
end
