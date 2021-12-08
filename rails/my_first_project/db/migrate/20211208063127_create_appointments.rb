class CreateAppointments < ActiveRecord::Migration[6.1]

  def change
    create_table :appointments do |t|
      t.belongs_to :physician, foreign_key: true
      t.belongs_to :patient, foreign_key:true
      t.datetime :appointment_date
      t.timestamps
    end
  end

end
