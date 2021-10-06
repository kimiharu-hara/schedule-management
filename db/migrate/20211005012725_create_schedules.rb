require "date"

class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.time :startday
      t.time :endday
      t.boolean :allday
      t.string :note
      
      t.timestamps
    end
  end
end
