json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date_of_visit, :pet, :customer, :reason_for_visit, :reminder, :doctor_id, :c_information_id
  json.url appointment_url(appointment, format: :json)
end
