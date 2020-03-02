class Game
  def initialize(p1, p2)
    @p1 = Player.new(p1)
    @p2 = Player.new(p2)
    @p1Turn = true
  end 

  def make_question
    num1 = rand(20) + 1
    num2 = rand(20) + 1
    operation = ['*', '-', '+'][rand(3)]
    answer = self.answer([operation, num1, num2])
    [operation, num1, num2, answer]
  end

  def answer(question)
    case question[0]
    when '*'
      return question[1] * question[2]
    when '+'
      return question[1] + question[2]
    when '-'
      return question[1] - question[2]
    end
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
    winner = @p1Turn ? @p1 : @p2
    puts "#{winner.name} wins with a score of #{winner.lives} / 3"
    puts "----- GAME OVER -----"
  end
end