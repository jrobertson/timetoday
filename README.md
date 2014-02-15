# Introducing the TimeToday gem

    # gem author: James Robertson
    # to install: gem install timetoday

    require 'timetoday'

    # return any time today
    TimeToday.any    #=> 2014-02-15 09:25:49 +0100

    # return a future time today
    TimeToday.future #=> 2014-02-15 19:23:33 +0100

    # return a random time within a range
    TimeToday.between '5pm', '7pm' #=> 2014-02-15 17:40:12 +0000 


The TimeToday returns a random time object for today. The time can either be any time today or any time between now and midnight.

## Resources

* <a href="https://github.com/jrobertson/timetoday">jrobertson/timetoday</a> [github.com]

timetoday gem random time today
