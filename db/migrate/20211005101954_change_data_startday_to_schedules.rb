
require "date"

class ChangeDataStartdayToSchedules < ActiveRecord::Migration[6.1]
  def change
    change_column :schedules, :startday, :date
  end
end
