class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :date_of_visit
      t.string :pet
      t.string :customer
      t.string :reason_for_visit
      t.string :reminder
      t.integer :doctor_id
      t.integer :c_information_id

      t.timestamps null: false
    end
  end
end
