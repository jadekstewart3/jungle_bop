class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if (1..4).include?(@speed)
      prodction_calculation_per_hour
    elsif (5..8).include?(@speed)
      (prodction_calculation_per_hour) * 0.90 
    elsif @speed == 9
      (prodction_calculation_per_hour) * 0.80
    else
      (prodction_calculation_per_hour) * 0.77
    end
  end

  def working_items_per_minute
    if (1..4).include?(@speed)
      production_calculation_per_minute.floor
    elsif (5..8).include?(@speed)
      ((production_calculation_per_minute) * 0.90).floor
    elsif @speed == 9
      ((production_calculation_per_minute) * 0.80).floor
    else
      ((production_calculation_per_minute) * 0.77).floor
    end
  end

  def prodction_calculation_per_hour
    @speed * 221
  end

  def production_calculation_per_minute
    (@speed * 221) / 60.0
  end
end
