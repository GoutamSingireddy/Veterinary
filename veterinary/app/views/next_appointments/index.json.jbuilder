json.array!(@next_appointments) do |next_appointment|
  json.extract! next_appointment, :id, :date_of_appointment, :reason_for_visit, :appointment_id
  json.url next_appointment_url(next_appointment, format: :json)
end
