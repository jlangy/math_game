class Player
  def initialize(name)
    @name = name
    @lives = 3
  end 

  attr_accessor :name, :lives;

  def ask_question(question)
    puts "#{name}: What is #{question[1]} #{question[0]} #{question[2]}"
    player_answer = gets.chomp.to_i
    if player_answer != question[3]
      puts "#{name}: False, correct answer was #{question[3]}"
      self.lives -= 1
    else
      puts "#{name}: Correct"
    end
  end
end

