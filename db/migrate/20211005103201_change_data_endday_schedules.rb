require "date"
class ChangeDataEnddaySchedules < ActiveRecord::Migration[6.1]
  def change
    change_column :schedules, :endday, :date
  end
end
