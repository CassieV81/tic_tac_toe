# frozen_string_literal: true

class TicTacToe
  def initialize
    @grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player1
    @player2
  end

  def create_board
    puts 'Player 1 = o and Player 2 = x'
    puts " #{@grid[0]} | #{@grid[1]} | #{@grid[2]} "
    puts '___________'
    puts " #{@grid[3]} | #{@grid[4]} | #{@grid[5]} "
    puts '___________'
    puts " #{@grid[6]} | #{@grid[7]} | #{@grid[8]} "
  end

  def player1_valid_selection
    grid = @grid.collect do |value|
      value == @player1 ? 'o' : value
    end
    @grid = grid
  end

  def player2_valid_selection
    grid = @grid.collect do |value|
      value == @player2 ? 'x' : value
    end
    @grid = grid
  end

  def player1_selection
    print 'Player 1: make your selection '
    @player1 = gets.chomp.to_i
    until @grid.include?(@player1)
      puts 'Invalid number! Select a valid number...'
      @player1 = gets.chomp.to_i
    end
    player1_valid_selection
    puts create_board
  end

  def player2_selection
    print 'Player 2: make your selection '
    @player2 = gets.chomp.to_i
    until @grid.include?(@player2)
      puts 'Invalid number! Select a valid number...'
      @player2 = gets.chomp.to_i
    end
    player2_valid_selection
    puts create_board
  end

  def player1_win?
    @grid[0] == 'o' && @grid[1] == 'o' && @grid[2] == 'o' ||
      @grid[3] == 'o' && @grid[4] == 'o' && @grid[5] == 'o' ||
      @grid[6] == 'o' && @grid[7] == 'o' && @grid[8] == 'o' ||
      @grid[0] == 'o' && @grid[3] == 'o' && @grid[6] == 'o' ||
      @grid[1] == 'o' && @grid[4] == 'o' && @grid[7] == 'o' ||
      @grid[2] == 'o' && @grid[5] == 'o' && @grid[8] == 'o' ||
      @grid[0] == 'o' && @grid[4] == 'o' && @grid[8] == 'o' ||
      @grid[2] == 'o' && @grid[4] == 'o' && @grid[6] == 'o'
  end

  def player2_win?
    @grid[0] == 'x' && @grid[1] == 'x' && @grid[2] == 'x' ||
      @grid[3] == 'x' && @grid[4] == 'x' && @grid[5] == 'x' ||
      @grid[6] == 'x' && @grid[7] == 'x' && @grid[8] == 'x' ||
      @grid[0] == 'x' && @grid[3] == 'x' && @grid[6] == 'x' ||
      @grid[1] == 'x' && @grid[4] == 'x' && @grid[7] == 'x' ||
      @grid[2] == 'x' && @grid[5] == 'x' && @grid[8] == 'x' ||
      @grid[0] == 'x' && @grid[4] == 'x' && @grid[8] == 'x' ||
      @grid[2] == 'x' && @grid[4] == 'x' && @grid[6] == 'x'
  end

  def no_winner?
    @grid.any? { |i| i.is_a?(Integer) }
  end

  def play_game
    until player1_win? == true || player2_win? == true || no_winner? != true
      player1_selection
      if player1_win? == true
        puts 'Player 1 wins'
      elsif no_winner? != true
        puts 'No winner! Try again...'
      else
        player2_selection
        puts 'Player 2 wins' if player2_win? == true
      end
    end
  end
end

tic_tac_toe = TicTacToe.new
tic_tac_toe.create_board
tic_tac_toe.play_game
