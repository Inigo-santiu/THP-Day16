require "pry"
require "time"

class Event
attr_accessor :start_date, :duration, :title, :attendees

@start_date
@duration
@title

  def initialize(get_start_date, get_duration, get_title, get_attendees)
    @start_date = Time.parse(get_start_date)
    @duration = get_duration.to_i
    @title = get_title
    @attendees = get_attendees
    return @start_date, @duration, @title, @attendees
  end

  def postpone_24h
    @start_date = @start_date + 24*60*60
    return @start_date
  end

  def end_date
    enddate = @start_date + @duration*60
    return enddate
  end

  def is_past? 
    if @start_date < Time.now 
      return true
    else
      return false
    end
  end

  def is_future?  # you can also type "!eventname.is_past?" to achieve the same result
    if @start_date > Time.now 
      return true
    else
      return false
    end
  end
  
  def make_pretty
    puts "Event name: #{self}."
    puts "Start date: #{@start_date}"
    puts "Duration: #{@duration}"
    puts "Title: #{@title}"
    puts "Attendees: #{@attendees}"
  end




end
binding.pry
puts "end of line"


#@start_date - Time.now > 30*60