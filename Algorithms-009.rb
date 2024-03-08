#Jogo da velha

class Cell
    attr_accessor :value

    def initialize(value = " ")
        @value = value
    end
end

class Board
    def initialize 
        @grid = Array.new(3) { Array.new(3) {Cell.new}}
    end

    def set_cell(x, y, value)
        @grid[x][y].value = value
    end

    def get_cell(x, y)
        @grid[x][y]
    end

    def display_board
        puts "+---+---+---+"
        @grid.each do |row|
            puts "| #{row[0]} | #{row[1]} | #{row[2]} "
            puts "-----------"
        end
    end

    def game_over
        return :winner if winner?
        return :draw if draw?
        false
    end

    private

    def winner?
    end

    def draw?
    end
end

class TicTacToe
    def initialize(board)
        @board = board
        @current_player = [Player.new(:x), Player.new(:o)].sample
    end

    def Play
        loop do 
            display_board
            puts "#{@current_player.name}: Entre com um número entre 1 e 9 para fazer sua jogada"
            human_move = gets.chomp.to_i - 1
            x, y = human_move_to_coordinate(human_move)
            @board.set_cell(x, y, @current_player.token)
            if @board.game_over = :winner
                display_board
                puts "Parabéns #{@current_player.name}!"
                break
            elsif @board.game_over == :draw
                display_board
                puts "Empatou!"
                break
            end
            @current_player = @current_player == @Players[0] ? @Players[1] : @players[0]
        end
    end

    private

    def human_move_to_coordinate(human_move)
        mapping = {
            0 =>[0, 0],
            1 =>[0, 1],
            2 =>[0, 2],
            3 =>[1, 0],
            4 =>[1, 1],
            5 =>[1, 2],
            6 =>[2, 0],
            7 =>[2, 1],
            8 =>[2, 2],
        }
        mapping[human_move]
    end
end

class Player
    attr_accessor :name, :token

    def initialize(token)
        @token = token
    end
end

board = Board.new
game = TicTacToe.new(board)
game.play

