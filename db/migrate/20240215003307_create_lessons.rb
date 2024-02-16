class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.string :ls
      t.datetime :date
      t.string :day # name of the day
      t.boolean :peak, default: nil
      t.boolean :booked, default: false
      t.string :book, default: nil
      t.integer :level, default: nil
      t.string :code, default: nil
      t.references :scrape, foreign_key: true
      t.timestamps
    end
  end
end
