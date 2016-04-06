# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode

# input: a nested collection representing a bingo board
# output: victory message if bingo win conditions are met
# steps:
# create a method that accepts one argument
#   iterate over each index of the array to determine if the bingo win condition is met
#   IF




# sample boards

# horizontal = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

# vertical = [[47, 44, 71, 'x', 88],
#             [22, 69, 75, 'x', 73],
#             [83, 85, 97, 'x', 57],
#             [25, 31, 96, 'x', 51],
#             [75, 70, 54, 'x', 83]]


# right_to_left = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]


# left_to_right = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]




# Initial Solution
class BingoScorer

  #your code here
  def initialize(bingo_board)
    @bingo_board = bingo_board
  end

  def horizontal
    bingo = []
    @bingo_board.each_index do |outer_index|
      @bingo_board[outer_index].each do |row|
        if
        bingo << @bingo_board[counter][inner_index]
      end
    end
  end

  def vertical
    bingo = []
    bingo_trans = @bingo_board.transpose
    counter = 0
    until counter == bingo_trans.length
    bingo_trans[counter].each_index do |inner_index|
      if bingo_trans[counter][inner_index] != 'x'
        next
      else
        bingo << bingo_trans[counter][inner_index]
        p bingo
        if bingo.length == 5
          p "BINGO!"
        end
      end
      counter += 1
    end
  end
  end

# ALL OF THE ABOVE IS COMPLETELY WRONG AND NEEDS TO BE REWORKED

end

hori = BingoScorer.new([[47, 44, 71, 8, 88], ['x', 'x', 'x', 'x', 'x'], [83, 85, 97, 89, 57], [25, 31, 96, 68, 51], [75, 70, 54, 80, 83]])

vert = BingoScorer.new([[47, 44, 71, 'x', 88], [22, 69, 75, 'x', 73], [83, 85, 97, 'x', 57], [25, 31, 96, 'x', 51], [75, 70, 54, 'x', 83]])

# hori.horizontal
vert.vertical



# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here: