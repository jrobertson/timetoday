#!/usr/bin/env ruby
# file: timetoday.rb

require 'date'

class TimeToday

  def self.any()
    #seconds_in_day = (DateTime.now + 1).to_time - DateTime.now.to_time
    seconds_in_day = 86399.999461942 # result from above

    any_time = Time.at rand(seconds_in_day)
    day, mon, year = Time.now.to_a.values_at 3,4,5
    s, min, hr = any_time.to_a.values_at 0,1,2
    Time.new(year, mon, day, hr, min, s)  
  end

  def self.future()
    t = Time.now
    time_remaining = ((Time.now.to_date + 1).to_time - 1) - t
    t + rand(time_remaining)
  end
end
