class Bowling
  attr_accessor :score, :roll1, :roll2, :roll3, :roll4
  
  def initialize
    @score = 0
  end
  
  def play_frame pins1, pins2, pins3, pins4
    @roll1 = roll pins1
    @roll2 = roll pins2
    
    # strike
    if @roll1 == 10
      @roll3 = roll pins3
      @roll4 = roll pins4
      @score += 10 + @roll3 + @roll4 + @roll3 + @roll4
      return
    end
      
    # normal
    if @roll1 + @roll2 < 10 
      @score += @roll1 + @roll2
      return
    end
    
    # spare
    if @roll1 + @roll2 == 10
      # hack
      @roll3 = roll pins3
      @roll4 = roll pins4
      @score += 10 + @roll3 + @roll3 + @roll4
      return
    end
    
  end
  
  def roll pins
    pins
  end
end