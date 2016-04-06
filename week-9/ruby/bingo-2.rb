# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode

# input: a nested collection representing a bingo board
# output: victory message if bingo win conditions are met
# steps:
# create a class to score bingo boards
#   create a method to set up the bingo board score class with a bingo board
#   create a method that tests for a horizontal win
#     for each row in the bingo board, determine if that row contains all "x's"
#     IF row has all "x's", then print a win message
#   create a method that tests for a vertical win
#     create 5 blank arrays for each new column transposed from the rows
#     create 5 different counters set to zero
#     create 5 identical iterations that push the counter index of the board with an inner-index starting at 0 and increasing
#       to 4 for each of the iterations into each of the blank arrays
#     concat the blank arrays into one big array
#     for each column in the transposed bingo board, determine if that row contains all "x's", if so print a win message
#   create a method that tests for a right to left diag win
#     create a blank array to hold the diagonal values of the bingo board
#     create a counter equal to 0
#     for each row in the bingo board with an index of the counter, push that value to the diag array
#     add one to the counter
#     check to see if the diag array is filled with all "x's", if so print a win message
#   create a method that tests for a left to right diag win
#     create a blank array to hold the diagonal value of the bingo board
#     create a counter equal to the length of one of the bingo board rows minus 1
#     for each row in the bingo board with an index of the counter, push that value to the diag array
#     subtract one from the counter
#     check to see if the full diag array is filled with all "x's", if so print a win message




# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
# class BingoScorer

#   #your code here
#   def initialize(bingo_board)
#     @bingo_board = bingo_board
#   end

#   def horizontal
#     @bingo_board.each do |row|
#       if row == ["x","x","x","x","x"]
#        p "Bingo!"
#        true
#       else
#         false
#       end
#     end
#   end

#   def vertical
#     column_1 = []
#     column_2 = []
#     column_3 = []
#     column_4 = []
#     column_5 = []
#     counter_1 = 0
#     counter_2 = 0
#     counter_3 = 0
#     counter_4 = 0
#     counter_5 = 0
#     @bingo_board[counter_1].each_index do |index|
#       column_1 << @bingo_board[counter_1][0]
#       counter_1 += 1
#     end
#     @bingo_board[counter_2].each_index do |index|
#       column_2 << @bingo_board[counter_2][1]
#       counter_2 += 1
#     end
#     @bingo_board[counter_3].each_index do |index|
#       column_3 << @bingo_board[counter_3][2]
#       counter_3 += 1
#     end
#     @bingo_board[counter_4].each_index do |index|
#       column_4 << @bingo_board[counter_4][3]
#       counter_4 += 1
#     end
#     @bingo_board[counter_5].each_index do |index|
#       column_5 << @bingo_board[counter_5][4]
#       counter_5 += 1
#     end
#     vertical_board = column_1 << column_2 << column_3 << column_4 << column_5
#     vertical_board.each do |column|
#       if column == ["x","x","x","x","x"]
#         p "Bingo!"
#         return true
#       else
#         return false
#       end
#     end
#     # @bingo_board.transpose.each do |column|
#     #   if column == ["x","x","x","x","x"]
#     #     p "Bingo!"
#     #     return true
#     #   else
#     #     return false
#     #   end
#     # end
#   end

#   def right_to_left_diag
#     diag = []
#     counter = 0
#     @bingo_board.each do |row|
#       diag << row[counter]
#       counter += 1
#     end
#     if diag == ["x","x","x","x","x"]
#       p "Bingo!"
#       return true
#     else
#       return false
#     end
#   end

#   def left_to_right_diag
#     diag = []
#     counter = @bingo_board[0].length - 1
#     @bingo_board.each do |row|
#       diag << row[counter]
#       counter -= 1
#     end
#     if diag == ["x","x","x","x","x"]
#       p "Bingo!"
#       return true
#     else
#       return false
#     end
#   end

#   # def won?
#   #   conditions = [:horizontal, :vertical, :right_to_left, :left_to_right]
#   #   conditions.each do |condition|
#   #     if self.send(condition)
#   #       return "BINGO!"
#   #       break
#   #     end
#   #   end
#   #   "No Bingo yet!"
#   # end
#   # ABOVE TEST METHOD IS FROM ESTHER, NEED TO RESEARCH self.send
# end


# Refactored Solution

class BingoScorer

  #your code here
  def initialize(bingo_board)
    @bingo_board = bingo_board
  end

  def horizontal
    @bingo_board.each do |row|
      if row == ["x","x","x","x","x"]
        p "Bingo!"
        true
      else
        false
      end
    end
  end

  def vertical
    @bingo_board.transpose.each do |column|
      if column == ["x","x","x","x","x"]
        p "Bingo!"
        true
      else
        false
      end
    end
  end

  def right_to_left_diag
    diag = []
    counter = 0
    @bingo_board.each do |row|
      diag << row[counter]
      counter += 1
    end
    if diag == ["x","x","x","x","x"]
      p "Bingo!"
      return true
    else
      return false
    end
  end

  def left_to_right_diag
    diag = []
    counter = @bingo_board[0].length - 1
    @bingo_board.each do |row|
      diag << row[counter]
      counter -= 1
    end
    if diag == ["x","x","x","x","x"]
      p "Bingo!"
      return true
    else
      return false
    end
  end

end




# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

hori = BingoScorer.new(horizontal)
vert = BingoScorer.new(vertical)
right_to_left = BingoScorer.new(right_to_left)
left_to_right = BingoScorer.new(left_to_right)

# test_one = BingoScorer.new(horizontal)
# p "Result of horizontal test: #{test_one.won? == "BINGO!"}"

hori.horizontal
vert.vertical
right_to_left.right_to_left_diag
left_to_right.left_to_right_diag