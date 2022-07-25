


class TicTacToe
  

  # def initialize(player1, player2)
  #   @player1 = player1
  #   @player2 = player2
  # end
  @@grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  
  def self.create_board()
    
    puts " #{@@grid[0]} | #{@@grid[1]} | #{@@grid[2]} "
    puts "___________"
    puts " #{@@grid[3]} | #{@@grid[4]} | #{@@grid[5]} "
    puts "___________"
    puts " #{@@grid[6]} | #{@@grid[7]} | #{@@grid[8]} "
    puts "Player 1 - o and Player 2 - x"
  end

  def self.play_game
    
    player1 = gets.chomp
    grid = @@grid.collect do |value|
      if value == player1.to_i
        value = "o"
      else
        value
      end
    end
    p grid
    @@grid = grid
    puts self.create_board
    player2 = gets.chomp
    grid = @@grid.collect do |value|
      if value == player2.to_i
        value = "x"
      else
        value
      end
    end
    p grid
    @@grid = grid
    puts self.create_board
    

  end

  

end

TicTacToe.create_board()
TicTacToe.play_game()



# def self.play_game
#   @player1 = gets
#   if @player1 == "1"
#     puts " o|  |  "
#     puts "__ __ __"
#     puts "  |  |  "
#     puts "__ __ __"
#     puts "  |  |  "
#   elsif  @player1 == "2"
#     puts "  | o|  "
#     puts "__ __ __"
#     puts "  |  |  "
#     puts "__ __ __"
#     puts "  |  |  "
#   elsif  @player1 == "3"
#     puts "  |  | o"
#     puts "__ __ __"
#     puts "  |  |  "
#     puts "__ __ __"
#     puts "  |  |  "
#   end
  

