#Jogo da velha

class Cell
    attr_accessor :value

    def initialize(value = " ")
        @value = value
    end

    def empty?
        @value == " "
    end
end

class Board
    def initialize 
        @grid = Array.new(3) { Array.new(3) {Cell.new}}
        @player_x = Player.new(:x)
        @player_o = Player.new(:o)
    end

    def empty?(x,y)
        @grid[x][y].empty?
    end

    def full?
        @grid.flatten.none?(&:empty?)
    end

    def set_cell(x, y, value)
        @grid[x][y].value = value
    end

    def get_cell(x, y)
        @grid[x][y]
    end

    def display_board
        @grid.each_with_index do |row, i|
            puts " #{row[0].value}  | #{row[1].value} | #{row[2].value} "
            puts "----+---+----" if i < 2
        end
    end

    def game_over
        return :winner if winner?
        return :draw if draw?
        false
    end

    private

    def winner?
        (0..2).any? { |row| @grid[row].uniq.length == 1 && @grid[row][0]!= " " }

        (0..2).any? { |col| [@grid[0][col], @grid[1][col], @grid[2][col]].uniq.length == 1 && @grid[0][col] != " "}

        [
            [@grid[0][0], @grid[1][1],@grid[2][2]].uniq.length == 1  && @grid[0][0] != " ",
            [@grid[0][2], @grid[1][1],@grid[2][0]].uniq.length == 1  && @grid[0][2] != " "
        ].any?
    end

    def draw?
        @grid.all? { |row| row.none? { |cell| cell == " "}} && !winner?
    end
end

class TicTacToe
    attr_reader :board, :current_player

    def initialize(player_x, player_o)
        @board = Board.new
        @current_player = [player_x, player_o].sample
    end

    def play
        players = Player.input_names
        board = Board.new
        game = TicTacToe.new(players[0], players[1])
      
        loop do
          game.board.display_board
          puts "#{game.current_player.name}: Entre com um número entre 1 e 9 para fazer sua jogada"
          position = gets.chomp.to_i
          x, y = game.convert_position_to_coordinates(position)
          if game.valid_move?(game.board, x, y)
            game.make_move(x, y, game.current_player.token)
            if game.game_over?
              game.board.display_board
              if game.winner?
                puts "Parabéns #{game.current_player.name}, você venceu!"
              else
                puts "Empatou!"
              end
              break
            end
          end
          game.switch_player
        end
      end

    private

    def convert_position_to_coordinates(position)
        x = (position - 1) / 3
        y = (position - 1) % 3
        [x, y]
    end

    def valid_move?(board, x, y)
        board.empty?(x, y)
    end

    def make_move(x, y, token)
        @board.set_cell(x, y, token)
    end

    def game_over?
        winner? || @board.full?
    end

    def winner?
        @board.winner?
    end

    def switch_player
        @current_player = @current_player == @board.player_x ? @board.player_o : @board.player_x
    end

end

class Player
    attr_accessor :name, :token

    def initialize(token, name = nil)
        @token = token
        @name = name
    end

    def token
        @token
    end

    def self.input_names
        puts "Insira o nome do jogador que ira jogar com #{:x}:"
        x_name = gets.chomp
        puts "Insira o nome do jogador que ira jogar com #{:o}:"
        o_name = gets.chomp
        [Player.new(:x, x_name), Player.new(:o, o_name)]
    end
end

players = Player.input_names
game = TicTacToe.new(players[0], players[1])
game.play