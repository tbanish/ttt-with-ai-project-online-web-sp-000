
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
      

      if (board.cells[1] == "O" && board.cells[2] == "O" && board.cells[0] == " ") || (board.cells[3] == "O" && board.cells[6] == "O" && board.cells[0] == " ")
        move = "1"
      elsif (board.cells[0] == "O" && board.cells[2] == "O" && board.cells[1] == " ") || (board.cells[4] == "O" && board.cells[7] == "O" && board.cells[1] == " ")
        move = "2"
      elsif (board.cells[0] == "O" && board.cells[1] == "O" && board.cells[2] == " ") || (board.cells[5] == "O" && board.cells[8] == "O" && board.cells[2] == " ")
        move = "3"
      elsif (board.cells[4] == "O" && board.cells[5] == "O" && board.cells[3] == " ") || (board.cells[0] == "O" && board.cells[6] == "O" && board.cells[3] == " ")
        move = "4"
      elsif (board.cells[3] == "O" && board.cells[5] == "O" && board.cells[4] == " ") || (board.cells[1] == "O" && board.cells[7] == "O" && board.cells[4] == " ") || (board.cells[0] == "O" && board.cells[8] == "O" && board.cells[4] == " ") || (board.cells[2] == "O" && board.cells[6] == "O" && board.cells[4] == " ")
        move = "5"
      elsif (board.cells[3] == "O" && board.cells[4] == "O" && board.cells[5] == " ") || (board.cells[2] == "O" && board.cells[8] == "O" && board.cells[5] == " ")
        move = "6"
      elsif (board.cells[7] == "O" && board.cells[8] == "O" && board.cells[6] == " ") || (board.cells[0] == "O" && board.cells[3] == "O" && board.cells[6] == " ")
        move = "7"
      elsif (board.cells[6] == "O" && board.cells[8] == "O" && board.cells[7] == " ") || (board.cells[1] == "O" && board.cells[4] == "O" && board.cells[7] == " ")
        move = "8"
      elsif (board.cells[6] == "O" && board.cells[7] == "O" && board.cells[8] == " " || board.cells[2] == "O" && board.cells[5] == "O" && board.cells[8] == " ")
        move = "9"
      elsif (board.cells[1] == "X" && board.cells[2] == "X" && board.cells[0] == " ") || (board.cells[3] == "X" && board.cells[6] == "X" && board.cells[0] == " ")
        move = "1"
      elsif (board.cells[0] == "X" && board.cells[2] == "X" && board.cells[1] == " ") || (board.cells[4] == "X" && board.cells[7] == "X" && board.cells[1] == " ")
        move = "2"
      elsif (board.cells[0] == "X" && board.cells[1] == "X" && board.cells[2] == " ") || (board.cells[5] == "X" && board.cells[8] == "X" && board.cells[2] == " ")
        move = "3"
      elsif (board.cells[4] == "X" && board.cells[5] == "X" && board.cells[3] == " ") || (board.cells[0] == "X" && board.cells[6] == "X" && board.cells[3] == " ")
        move = "4"
      elsif (board.cells[3] == "X" && board.cells[5] == "X" && board.cells[4] == " ") || (board.cells[1] == "X" && board.cells[7] == "X" && board.cells[4] == " ") || (board.cells[0] == "X" && board.cells[8] == "X" && board.cells[4] == " ") || (board.cells[2] == "X" && board.cells[6] == "X" && board.cells[4] == " ")
        move = "5"
      elsif (board.cells[3] == "X" && board.cells[4] == "X" && board.cells[5] == " ") || (board.cells[2] == "X" && board.cells[8] == "X" && board.cells[5] == " ")
        move = "6"
      elsif (board.cells[7] == "X" && board.cells[8] == "X" && board.cells[6] == " ") || (board.cells[0] == "X" && board.cells[3] == "X" && board.cells[6] == " ")
        move = "7"
      elsif (board.cells[6] == "X" && board.cells[8] == "X" && board.cells[7] == " ") || (board.cells[1] == "X" && board.cells[4] == "X" && board.cells[7] == " ")
        move = "8"
      elsif (board.cells[6] == "X" && board.cells[7] == "X" && board.cells[8] == " " || board.cells[2] == "X" && board.cells[5] == "X" && board.cells[8] == " ")
        move = "9"
      else
        move = board.cells.index(" ") + 1
      end
      move.to_s
    end
  end
end





    
    
    
    