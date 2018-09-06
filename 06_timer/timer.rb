class Timer
  # attr_accessor :seconds

  def initialize(duration_in_seconds = 0)
    @duration_in_seconds = duration_in_seconds
    extract_timer_duration_components(duration_in_seconds)
  end

  def seconds
    @seconds
  end

  def seconds=(duration_in_seconds)
    initialize(duration_in_seconds)
  end

  def extract_timer_duration_components(duration_in_seconds, padstr: "0")
    @hours = duration_in_seconds / 3600
    seconds_left_after_extracting_hours = duration_in_seconds % 3600
    @minutes = seconds_left_after_extracting_hours / 60
    @seconds = seconds_left_after_extracting_hours % 60
    # puts "hours, seconds_left_after_extracting_hours, minutes, seconds = #{@hours}, #{seconds_left_after_extracting_hours}, #{@minutes}, #{seconds}"
    # ===
    @hour_str = @hours.to_s.rjust(2, padstr)
    @minute_str = @minutes.to_s.rjust(2, padstr)
    @second_str = @seconds.to_s.rjust(2, padstr)
  end

  def time_string(delimiter: ":")
    "#{@hour_str}#{delimiter}#{@minute_str}#{delimiter}#{@second_str}"
  end
end
