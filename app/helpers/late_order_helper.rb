module LateOrderHelper
  def display_time_entered(time)
    hourstr = time[0,2]
    hourint = hourstr.to_i
    if hourint < 13
      if hourint == 0
        hourint = 12
        time[0,2] = hourint.to_s
      end
      formatted = time + ' AM'
    else
      hourint -= 12
      if hourint < 10
        hourstr = '0' + hourint.to_s
        time[0,2] = hourstr
      else
        time[0,2] = hourint.to_s
      end
      formatted = time + ' PM'
    end
  end

  def display_time_cutoff(datetime)
    formatted = datetime.strftime("%I:%M:%S %p")
  end
end
