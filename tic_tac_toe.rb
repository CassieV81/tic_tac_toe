# frozen_string_literal: true

class TicTacToe
  @grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  def self.create_board
    puts " #{@grid[0]} | #{@grid[1]} | #{@grid[2]} "
    puts '___________'
    puts " #{@grid[3]} | #{@grid[4]} | #{@grid[5]} "
    puts '___________'
    puts " #{@grid[6]} | #{@grid[7]} | #{@grid[8]} "
    puts 'Player 1 - o and Player 2 - x'
  end

  def self.player1_selection
    player1 = gets.chomp
    grid = @grid.collect do |value|
      if value == player1.to_i
        value = 'o'
      else
        value
      end
    end
    @grid = grid
    puts create_board
    p @grid
  end

  def self.player2_selection
    player2 = gets.chomp
    grid = @grid.collect do |value|
      if value == player2.to_i
        value = 'x'
      else
        value
      end
    end
    @grid = grid
    puts create_board
    p @grid
  end

  # def self.check_winner
  #   if @grid == ["o", "o" ,"o", "#{@grid[3]}", "#{@grid[4]}", "#{@grid[5]}", "#{@grid[6]}", "#{@grid[7]}", "#{@grid[8]}"] || @grid == ["#{@grid[0]}", "#{@grid[1]}", "#{@grid[2]}", "o", "o" , "o", "#{@grid[6]}", "#{@grid[7]}", "#{@grid[8]}"] || @grid == ["#{@grid[0]}", "#{@grid[1]}", "#{@grid[2]}", "#{@grid[3]}", "#{@grid[4]}", "#{@grid[5]}", "o", "o" , "o"]
  #     puts 'Player 1 wins'
  #   end
  # end

  def self.play_game
    4.times do
      player1_selection
      player2_selection
      if @grid == ["o", "o" ,"o", "#{@grid[3]}", "#{@grid[4]}", "#{@grid[5]}", "#{@grid[6]}", "#{@grid[7]}", "#{@grid[8]}"] || @grid == ["#{@grid[0]}", "#{@grid[1]}", "#{@grid[2]}", "o", "o" , "o", "#{@grid[6]}", "#{@grid[7]}", "#{@grid[8]}"] || @grid == ["#{@grid[0]}", "#{@grid[1]}", "#{@grid[2]}", "#{@grid[3]}", "#{@grid[4]}", "#{@grid[5]}", "o", "o" , "o"]
        puts 'Player 1 wins'
      end
    end
  end
end

TicTacToe.create_board
TicTacToe.play_game

