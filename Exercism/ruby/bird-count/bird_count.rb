class BirdCount
  
  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end
  
  def self.last_week
    last_weeks_counts = [0, 2, 5, 3, 7, 8, 4]
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    @birds_per_day.sum
  end

  def busy_days
    @birds_per_day.count { |bird_count| bird_count >= 5 }
  end

  def day_without_birds?
    @birds_per_day.any? { |bird_count| bird_count == 0 }

  end
end
