
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
      any_open_space
    end
    
    def any_open_space
      move = @board.cells.index(" ") + 1
      move.to_s
    end
    
     
    

  end
end





    
    
    
    