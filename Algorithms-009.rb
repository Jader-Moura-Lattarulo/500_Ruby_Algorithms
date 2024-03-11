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
      puts "\n#{@name}, É sua vez (1-9):"
      position = gets.chomp.to_i - 1
      x, y = position.divmod(3)
      until board.empty?(x, y)
        puts "\nMovimento invalido. Tente outra vez:"
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
        puts "\n#{@current_player.name} venceu!\n"
      else
        puts "\nDeu velha! Hahahaha...\n"
      end
    end
end
  
  
puts "Bem-vindo ao Jogo da Velha!"
print "Jogador(a) X, Coloque o seu nome:"
name_x = gets.chomp
print "Jogador(a) O, Coloque o seu nome:"
name_o = gets.chomp
  
player_x = Player.new(name_x, "X")
player_o = Player.new(name_o, "O")
  
game = TicTacToe.new(player_x, player_o)
game.play  