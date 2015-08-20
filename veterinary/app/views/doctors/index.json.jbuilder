json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :address, :degree, :years_in_practice
  json.url doctor_url(doctor, format: :json)
end
