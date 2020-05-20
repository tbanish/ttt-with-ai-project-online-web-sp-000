
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
      
      if board.cells[0] == "X" && board.cells[4] == "X" && boar.cells[8] == " "
        move = board.cells[8] + 1
      else
        move = board.cells.index(" ") + 1
      end
      move.to_s
    end
    
    
  end
end





    
    
    
    