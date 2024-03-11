#Jogo da Velha

class Board
    def initialize
      @grid = Array.new(3) { Array.new(3, " ") }
    end
  
    def display
      @grid.each_with_index do |row, i|
        puts row.join("  |")
        puts "---+---+---" unless i == 2
      end
    end

    def empty?(x, y)
      @grid[x][y] == " "
    end
  
    def place_mark(x, y, mark)
      @grid[x][y] = mark
    end
  
    def full?
      @grid.flatten.none? { |cell| cell == " " }
    end
  
    def winner?(mark)
      check_rows(mark) || check_columns(mark) || check_diagonals(mark)
    end
  
    private
  
    def check_rows(mark)
      @grid.any? { |row| row.all? { |cell| cell == mark } }
    end
  
    def check_columns(mark)
      @grid.transpose.any? { |col| col.all? { |cell| cell == mark } }
    end
  
    def check_diagonals(mark)
      diagonals = [
        [@grid[0][0], @grid[1][1], @grid[2][2]],
        [@grid[0][2], @grid[1][1], @grid[2][0]]
      ]
      diagonals.any? { |diag| diag.all? { |cell| cell == mark } }
    end
  end
  
  class Player
    attr_reader :name, :mark
  
    def initialize(name, mark)
      @name = name
      @mark = mark
    end
  
    def make_move(board)
      puts "#{@name}, it's your turn (1-9):"
      position = gets.chomp.to_i - 1
      x, y = position.divmod(3)
      until board.empty?(x, y)
        puts "Invalid move. Try again:"
        position = gets.chomp.to_i - 1
        x, y = position.divmod(3)
      end
      board.place_mark(x, y, @mark)
    end
  end
  
  class TicTacToe
    def initialize(player_x, player_o)
      @board = Board.new
      @players = { x: player_x, o: player_o }
      @current_player = @players[:x]
    end
  
    def play
      loop do
        @board.display
        @current_player.make_move(@board)
        break if game_over?
  
        switch_player
      end
  
      @board.display
      announce_result
    end
  
    private
  
    def switch_player
      @current_player = (@current_player == @players[:x]) ? @players[:o] : @players[:x]
    end
  
    def game_over?
      @board.full? || @board.winner?(@current_player.mark)
    end
  
    def announce_result
      if @board.winner?(@current_player.mark)
        puts "#{@current_player.name} wins!"
      else
        puts "It's a draw!"
      end
    end
  end
  
  # Main
  puts "Welcome to Tic Tac Toe!"
  puts "Player X, enter your name:"
  name_x = gets.chomp
  puts "Player O, enter your name:"
  name_o = gets.chomp
  
  player_x = Player.new(name_x, "X")
  player_o = Player.new(name_o, "O")
  
  game = TicTacToe.new(player_x, player_o)
  game.play
  