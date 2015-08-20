class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :address
      t.string :degree
      t.string :years_in_practice

      t.timestamps null: false
    end
  end
end
