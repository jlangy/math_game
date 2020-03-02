class Player
  def initialize(name)
    @name = name
    @lives = 3
  end 

  attr_accessor :name, :lives;

  def ask_question(question)
    puts "#{name}: What is #{question[0]} + #{question[1]}"
    player_answer = gets.chomp.to_i
    answer = question[0] + question[1]
    if player_answer != answer
      puts "#{name}: False"
      self.lives -= 1
    else
      puts "#{name}: Correct"
    end
  end
end

