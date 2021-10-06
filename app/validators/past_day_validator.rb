class PastDayValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value < Date.today
      record.errors[attribute] << "過去の日付は使えません"
    end
  end
end