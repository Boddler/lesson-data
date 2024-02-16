class CreateScrapes < ActiveRecord::Migration[7.1]
  def change
    create_table :scrapes do |t|
      t.integer :peak_unbooked
      t.integer :peak_booked
      t.integer :non_peak_unbooked
      t.integer :non_peak_booked
      t.string :new_bookings, array: true, default: []
      t.string :cancelled_bookings, array: true, default: []
      t.timestamps
    end
  end
end
