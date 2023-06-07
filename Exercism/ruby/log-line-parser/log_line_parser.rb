class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
   @line.split(":").last.strip
   
  end

  def log_level
    open_index = @line.index("[")
    close_index = @line.index("]")
    @line[open_index + 1..close_index - 1].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
