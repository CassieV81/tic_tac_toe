# frozen_string_literal: true

class TicTacToe


  def initialize
    @grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def create_board
    puts " #{@grid[0]} | #{@grid[1]} | #{@grid[2]} "
    puts '___________'
    puts " #{@grid[3]} | #{@grid[4]} | #{@grid[5]} "
    puts '___________'
    puts " #{@grid[6]} | #{@grid[7]} | #{@grid[8]} "
    puts 'Player 1 - o and Player 2 - x'
  end

  def player1_selection
    print 'Player 1: '
    player1 = gets.chomp.to_i
    grid = @grid.collect do |value|
      value == player1 ? 'o' : value
    end
    @grid = grid
    puts create_board
  end

  def player2_selection
    print 'Player 2: '
    player2 = gets.chomp.to_i
    grid = @grid.collect do |value|
      value == player2 ? 'x' : value
    end
    @grid = grid
    puts create_board
  end

  # def player1_win_combo?

  #   @grid[0] == "o" && @grid[1] == "o" && @grid[2] == "o"
  #   @grid[3] == "o" && @grid[4] == "o" && @grid[5] == "o"
  #   @grid[6] == "o" && @grid[7] == "o" && @grid[8] == "o"
  #   @grid[0] == "o" && @grid[3] == "o" && @grid[6] == "o"
  #   @grid[1] == "o" && @grid[4] == "o" && @grid[7] == "o"
  #   @grid[2] == "o" && @grid[5] == "o" && @grid[8] == "o"
  #   @grid[0] == "o" && @grid[4] == "o" && @grid[8] == "o"
  #   @grid[2] == "o" && @grid[4] == "o" && @grid[6] == "o"

  # end

  def check_winner
    if @grid[0] == 'o' && @grid[1] == 'o' && @grid[2] == 'o' ||
       @grid[3] == 'o' && @grid[4] == 'o' && @grid[5] == 'o' ||
       @grid[6] == 'o' && @grid[7] == 'o' && @grid[8] == 'o' ||
       @grid[0] == 'o' && @grid[3] == 'o' && @grid[6] == 'o' ||
       @grid[1] == 'o' && @grid[4] == 'o' && @grid[7] == 'o' ||
       @grid[2] == 'o' && @grid[5] == 'o' && @grid[8] == 'o' ||
       @grid[0] == 'o' && @grid[4] == 'o' && @grid[8] == 'o' ||
       @grid[2] == 'o' && @grid[4] == 'o' && @grid[6] == 'o'
      puts 'Player 1 wins'
    elsif @grid[0] == 'x' && @grid[1] == 'x' && @grid[2] == 'x' ||
          @grid[3] == 'x' && @grid[4] == 'x' && @grid[5] == 'x' ||
          @grid[6] == 'x' && @grid[7] == 'x' && @grid[8] == 'x' ||
          @grid[0] == 'x' && @grid[3] == 'x' && @grid[6] == 'x' ||
          @grid[1] == 'x' && @grid[4] == 'x' && @grid[7] == 'x' ||
          @grid[2] == 'x' && @grid[5] == 'x' && @grid[8] == 'x' ||
          @grid[0] == 'x' && @grid[4] == 'x' && @grid[8] == 'x' ||
          @grid[2] == 'x' && @grid[4] == 'x' && @grid[6] == 'x'
      puts 'Player 2 wins'
      nil
    end
  end

  def play_game
    loop do
      player1_selection
      return if check_winner == true

      player2_selection
    end
  end
end

tic_tac_toe = TicTacToe.new
tic_tac_toe.create_board
tic_tac_toe.play_game
