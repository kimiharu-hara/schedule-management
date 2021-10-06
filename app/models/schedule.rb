class Schedule < ApplicationRecord
  validates :title, presence: true
  
  validate :start_end
    def start_end
      if startday == nil
        errors.add(:startday, "を入力をしてください")
      elsif endday == nil 
      elsif endday < startday
        errors.add(:endday, "は開始日より後にして下さい")
      end
    end
 
  validate :past_day
    def past_day
      if endday == nil
        errors.add(:endday, "を入力をしてください")
      elsif endday < Date.today  
         errors.add(:endday, "には過去の日付は使えません")
      end
    end

end
