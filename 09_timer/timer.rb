class Timer
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
    @time_string = self.time_string
  end

  def time_string
    # Find hours, minutes, seconds
    hours = @seconds/3600  # 3600 is seconds_in_hour  
    minutes = @seconds % 3600  # minutes still represented in seconds (so that minutes var can be used to find seconds) 
    seconds = minutes % 60
    minutes = minutes / 60    # convert minutes to ... minutes
    
    to_display = {"hour" => hours, "minute" => minutes, "second" => seconds}
    to_display.each do |key, value|
      new_value = value.to_s
      new_value = '0'+new_value if value < 10
      to_display[key] = new_value
    end
    
    "#{to_display["hour"]}:#{to_display["minute"]}:#{to_display["second"]}"
    
  end

end