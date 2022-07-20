class TicTacToe
  def initialize(board)
    @board = board
  end

  def winner

    # row checks

    @board.each do |row|
      # row index
      j = 0
      # grab first item to compare other squares
      currSquare = row[0]
      row.each do |square|
        puts square
        if square != currSquare || square == " "
          # this row is not a winner
          break
        end
        if j == @board.length - 1
          #row is a winner
          return currSquare
        end
        j += 1
      end
    end

    # column checks


    # diagonal checks

    # if row1[0] == "o" && row2[1] == "o" && row3[2] == "o"
    #   return "o"
    # end

    # if row1[2] == "o" && row2[1] == "o" && row3[0] == "o"
    #   return "o"
    # end

    # if row1[0] == "x" && row2[1] == "x" && row3[2] == "x"
    #   return "x"
    # end

    # if row1[2] == "x" && row2[1] == "x" && row3[0] == "x"
    #   return "x"
    # end
  end
end
