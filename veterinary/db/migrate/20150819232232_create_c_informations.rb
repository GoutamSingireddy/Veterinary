class CreateCInformations < ActiveRecord::Migration
  def change
    create_table :c_informations do |t|
      t.string :name_of_pet
      t.string :type_of_pet
      t.string :breed
      t.integer :Pet_age
      t.string :pet_weight
      t.integer :appointment_id

      t.timestamps null: false
    end
  end
end
