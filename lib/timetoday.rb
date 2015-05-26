#!/usr/bin/env ruby

# file: timetoday.rb

require 'date'
require 'time'
require 'chronic_duration'
require 'app-routes'

class TimeToday
  include AppRoutes
  
  def initialize()
    super()
    expressions()
  end

  def self.any(d=Date.today)
    #seconds_in_day = (DateTime.now + 1).to_time - DateTime.now.to_time
    seconds_in_day = 86399.999461942 # result from above

    any_time = Time.at rand(seconds_in_day)
    day, mon, year = d.day, d.month, d.year
    s, min, hr = any_time.to_a.values_at 0,1,2
    Time.new(year, mon, day, hr, min, s)  
  end

  def self.between(s1,s2)
    rand Time.parse(s1)..Time.parse(s2)
  end

  def self.future()
    t = Time.now
    time_remaining = ((Time.now.to_date + 1).to_time - 1) - t
    t + rand(time_remaining)
  end

  def self.within(duration)
    Time.now + rand(ChronicDuration.parse(duration))
  end
  
  def between(s)
    expression = find_expression(s)
  end

  private
  
  def expressions()
    
    # e.g. 2-3 days
    get /(\d+)\s*-\s*(\d+)\s+days/ do |n1, n2|
      d = Date.today
      tt = TimeToday
      rand(tt.any(d+n1.to_i)..tt.any(d+n2.to_i)).to_time
    end
  end

  alias find_expression run_route
  
end
