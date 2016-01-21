class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :email
      t.datetime :time

      t.timestamps
    end
  end
end
