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

    # row loop
    for j in 0..@board.length-1
      currSquare = @board[0][j]
      #column loop
      for i in 0..@board.length-1
        if @board[i][j] != currSquare || @board[i][j] == " "
          #not a winner
          break
        end
        if i == @board.length-1
          # column winner
          return currSquare
        end
      end
    end

    # diagonal checks

    # check backward diagonal
    currSquare = @board[0][0]
    for i in 0..@board.length-1
      #look at @board[0..n][0..n]
      if @board[i][i] != currSquare || @board[i][i] == " "
        #not a winner
        break
      end
      if i == @board.length-1
        # backward diagonal winner
        return currSquare
      end
    end

    # check forward diagonal
    #look at @board[0..n][n..0]
    currSquare = @board[0][@board.length-1]
    j = @board.length-1
    for i in 0..@board.length-1
      if @board[i][j] != currSquare || @board[i][j] == " "
        #not a winner
        break
      end
      if i == @board.length-1
        # forward diagonal winner
        return currSquare
      end
      j -= 1
    end

    #check unfinished
    @board.each do |row|
      row.each do |square|
        if square == " "
          return "unfinished"
        end
      end
    end

    return "draw"

  end
end
