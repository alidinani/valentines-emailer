module DateCheck
  def self.send_today?
    valentines_day = Date.parse('Feb 14, 2015')
    today = Date.today
    (today - valentines_day) % 7 == 0
  end
end
