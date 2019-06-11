require_relative './player'
require_relative './turn'

class Game
  # constructor
  def initialize
    @player1 = Player.new("Bob")
    @player2 = Player.new("Jane")
    @players = [@player1, @player2]
    @turn = Turn.new()
  end

  #all the function needed for the game to run

  def run
    #if player 1 or player b still have hp >0
    while (@player1.hp > 0 && @player2.hp > 0)
    #continue running method math_question (should it be while instead of if?!)

      @turn.current_turn += 1

      puts "{{{{{ This is Turn ##{@turn.current_turn }! }}}}}"
      math_question
    end

    if (@player1.hp>0)
      puts "Game Over, #{@player1.name} won!"
    else
      puts "Game Over, #{@player2.name} won!"
    end
  end

  def math_question

    current_player = @players.first
    enemy_player = @players.last
    #puts current_player.inspect
    number1 = rand(1..20)
    number2= rand(1..20)

    # the_result = rand(1..20) + rand(1..20)


    puts "Hey #{current_player.name}, think fast, what is the result of #{number1} + #{number2} ? ...Today #{current_player.name} yeah?..."

    the_result = number1 + number2
    user_input_number = $stdin.gets.chomp.to_i

    if (user_input_number == the_result)
      current_player.p_score += 1
    else
      current_player.hp -= 1

    end

    # @turn.current_turn += 1

    # puts "This is Turn ##{@turn.current_turn } !"
    puts "*********************************************************************"
    puts "**************** #{current_player.name} your hp is: #{current_player.hp} and your score: #{current_player.p_score} ****************"
    puts "**************** #{enemy_player.name} your hp is: #{enemy_player.hp} and your score: #{enemy_player.p_score} ****************"
    puts "*********************************************************************"
    #puts current_player.inspect
    @players.rotate!
    #arr = @players.rotate!
    #current_player = arr[0]

    #puts current_player.inspect


    # puts "so this: #{@this_turn}"
    # puts "And!!!: #{@turn.current_turn}"
  end
#validate_answer =


  # all the status updates too

end