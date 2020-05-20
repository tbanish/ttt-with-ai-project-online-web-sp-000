
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
      default_move(board)
    end
    
    def default_move(board)
      move = board.cells.index(" ") + 1
      move.to_s
    end
    
    def check_wins(board)
      WIN_COMBINATIONS.each do |combo|
        if board.cells[combo[0]] == "X" && board.cells[combo[1]] == "X" && board.cells[combo] && board.
    end
      
      
      
  end
end





    
    
    
    