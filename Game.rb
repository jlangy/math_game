class Game
  def initialize(p1, p2)
    @p1 = Player.new(p1)
    @p2 = Player.new(p2)
    @p1Turn = true
  end 

  def make_question
    num1 = rand(20) + 1
    num2 = rand(20) + 1
    # Operation = ['*', '-', '+'][rand(3)]
    [num1, num2]
  end

  def start
    while @p1.lives > 0 && @p2.lives > 0 do
      
      puts "----- NEW TURN -----"
      
      if @p1Turn  
        @p1.ask_question(self.make_question)
      else 
        @p2.ask_question(self.make_question)
      end
      @p1Turn = !@p1Turn
      puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
    end
  end


end