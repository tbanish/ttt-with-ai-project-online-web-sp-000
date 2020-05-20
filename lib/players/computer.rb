
module Players
  class Computer < Player
    
    attr_accessor :board
    
    WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [6, 4, 2]
  ]
    
    def move(board)
      move = ""

      if @token == "X"
        WIN_COMBINATIONS.each do |combo|
          if @token == "X" && board.cells[combo[0]] == "X" && board.cells[combo[1]] == "X" && board.cells[combo[2]] == " "
            move = combo[2] + 1
          elsif @token == "X" && board.cells[combo[0]] == "X" && board.cells[combo[2]] == "X" && board.cells[combo[1]] == " "
            move = combo[1] + 1
          elsif @token == "X" && board.cells[combo[1]] == "X" && board.cells[combo[2]] == "X" && board.cells[combo[0]] == " "
            move = combo[0] + 1
          elsif @token == "X" && board.cells[combo[0]] == "O" && board.cells[combo[1]] == "O" && board.cells[combo[2]] == " "
            move = combo[2] + 1
          elsif @token == "X" && board.cells[combo[0]] == "O" && board.cells[combo[2]] == "O" && board.cells[combo[1]] == " "
            move = combo[1] + 1
          elsif @token == "X" && board.cells[combo[1]] == "O" && board.cells[combo[2]] == "O" && board.cells[combo[0]] == " "
            move = combo[0] + 1
          else
            move = board.cells.index(" ") + 1
          end
        end
      elsif @token == "O"
        WIN_COMBINATIONS.each do |combo|
          if board.cells[combo[0]] == "O" && board.cells[combo[1]] == "O" && board.cells[combo[2]] == " "
            move = combo[2] + 1
          elsif board.cells[combo[0]] == "O" && board.cells[combo[2]] == "O" && board.cells[combo[1]] == " "
            move = combo[1] + 1
          elsif board.cells[combo[1]] == "O" && board.cells[combo[2]] == "O" && board.cells[combo[0]] == " "
            move = combo[0] + 1
          elsif board.cells[combo[0]] == "X" && board.cells[combo[1]] == "X" && board.cells[combo[2]] == " "
            move = combo[2] + 1
          elsif board.cells[combo[0]] == "X" && board.cells[combo[2]] == "X" && board.cells[combo[1]] == " "
            move = combo[1] + 1
          elsif board.cells[combo[1]] == "X" && board.cells[combo[2]] == "X" && board.cells[combo[0]] == " "
            move = combo[0] + 1
          else
            move = board.cells.index(" ") + 1
          end
        end
      end
      move.to_s
    end
  end
end





    
    
    
    