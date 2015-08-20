class CreateNextAppointments < ActiveRecord::Migration
  def change
    create_table :next_appointments do |t|
      t.string :date_of_appointment
      t.string :reason_for_visit
      t.string :appointment_id

      t.timestamps null: false
    end
  end
end
