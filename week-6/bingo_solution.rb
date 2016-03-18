# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#   1. set an instance variable equal to a collection of the letters "b, i, n, g, o" that are randomized and pull the first
#      value from the collection
#   2. set an instance variable equal to a random number from 1-100

# Check the called column for the number called.
#   1. create a method that takes in three arguments
#   2. set one argument equal to the instance variable for the letter call
#   3. set the second argument equal to the instance variable for the number call
#   4. set the final argument equal to the instance variable for the board
#   5. set a counter equal to 0
#   6. IF the letter call is equal to "b", iterate over each index of the board that corresponds to the first
#      item in each row of the board

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def selection(letter, number)
    p @letter_call = ["b", "i", "n", "g", "o"].shuffle![0]
    p @number_call = rand(1..100)
  end

  def check_column(letter, number, bingo_board)
    if @letter_call == "b"
      @bingo_board.each_with_index do |num, index|
        if @bingo_board[index][0] == @number_call
          @bingo_board[index][0] = "x"
        else
          num
        end
      end
    elsif @letter_call == "i"
      @bingo_board.each_with_index do |num, index|
        if @bingo_board[index][1] == @number_call
          @bingo_board[index][1] = "x"
        else
          num
        end
      end
    elsif @letter_call == "n"
      @bingo_board.each_with_index do |num, index|
        if @bingo_board[index][2] == @number_call
          @bingo_board[index][2] = "x"
        else
          num
        end
      end
    elsif @letter_call == "g"
      @bingo_board.each_with_index do |num, index|
        if @bingo_board[index][3] == @number_call
          @bingo_board[index][3] = "x"
        else
          num
        end
      end
    elsif @letter_call == "o"
      @bingo_board.each_with_index do |num, index|
        if @bingo_board[index][4] == @number_call
          @bingo_board[index][4] = "x"
        else
          num
        end
      end
    else
      @bingo_board
    end
  end

  def print_board
    selection(@letter_call, @number_call)
    @pretty_board = check_column(@letter_call, @number_call, @bingo_board)
    p @pretty_board[0]
    p @pretty_board[1]
    p @pretty_board[2]
    p @pretty_board[3]
    p @pretty_board[4]
  end
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.print_board




#Reflection