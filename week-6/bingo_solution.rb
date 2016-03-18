# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 3 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#   1. set an instance variable equal to a collection of the letters "b, i, n, g, o" that are randomized and pull the first
#      value from the collection
#   2. set an instance variable equal to a random number from 1-100

# Check the called column for the number called.
#   1. IF the letter call is equal to "b", iterate over each index of the board that corresponds to the first
#      item in each row of the board and assign to a new collection as an instance variable
#   2. ELSIF the letter call is equal to "i", iterate over each index of the board that corresponds to the second
#      item in each row of the board and assign to a new collection as an instance variable
#   3. ELSIF the letter call is equal to "n", iterate over each index of the board that corresponds to the third
#      item in each row of the board and assign to a new collection as an instance variable
#   4. ELSIF the letter call is equal to "g", iterate over each index of the board that corresponds to the fourth
#      item in each row of the board and assign to a new collection as an instance variable
#   5. ELSIF the letter call is equal to "o", iterate over each index of the board that corresponds to the fifth
#      item in each row of the board and assign to a new collection as an instance variable

# If the number is in the column, replace with an 'x'
#   1. Define a method to replace a selected number with "X" if thatn number appears in the column
#   2. IF the instance variable from the check column method includes the generated number instance variable, replace that
#      instance of the number with the letter "X"

# Remake the board
#   1. Define a method that will take our isolated column collection from the check column method and put it back into the
#      original bingo board
#   2. IF the letter call is equal to "b", set each first value in each row of the bingo board equal to each value in the isolated
#      column
#   3. ELSIF the letter call is equal to "i", set each second value in each row of the bingo board equal to each value in the
#      isolated column
#   4. ELSIF the letter call is equal to "n", set each third value in each row of the bingo board equal to each value in the
#      isolated column
#   5. ELSIF the letter call is equal to "g", set each fourth value in each row of the bingo board equal to each value in the
#      isolated column
#   6. ELSIF the letter call is equal to "o", set each fifth value in each row of the bingo board equal to each value in the
#      isolated column

# Display the board to the console (prettily)
#   1. Define a method to print the bingo board to the console
#   2. call the method for selecting a letter/number pair
#   3. call the method that isolates a column of the bingo board based on the letter called
#   4. call the method that replaces a number in the isolated column if it includes the number called from the letter/number pair
#   5. call the remake board method and set it equal to an instance variable
#   6. PUTS every row of the bingo board to the console, calling on the instance variable from step 5

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
     @column = @bingo_board.map.each_with_index {|num, index| @bingo_board[index][0]}
    elsif @letter_call == "i"
      @column = @bingo_board.map.each_with_index {|num, index| @bingo_board[index][1]}
    elsif @letter_call == "n"
      @column = @bingo_board.map.each_with_index {|num, index| @bingo_board[index][2]}
    elsif @letter_call == "g"
      @column = @bingo_board.map.each_with_index {|num, index| @bingo_board[index][3]}
    elsif @letter_call == "o"
      @column = @bingo_board.map.each_with_index {|num, index| @bingo_board[index][4]}
    end
  end

  def replace_with_x(column, number, bingo_board)
    if @column.include?(@number_call)
      @column.each_with_index do |num, index|
        if num == @number_call
          @column[index] = "X"
        else
          num
        end
      end
      @column
    end
  end

  def remake_board(column, letter, bingo_board)
    if @letter_call == "b"
      @bingo_board.each_with_index do |item, index|
        @bingo_board[index][0] = @column[index]
      end
    elsif @letter_call == "i"
      @bingo_board.each_with_index do |item, index|
        @bingo_board[index][1] = @column[index]
      end
    elsif @letter_call == "n"
      @bingo_board.each_with_index do |item, index|
        @bingo_board[index][2] = @column[index]
      end
    elsif @letter_call == "g"
      @bingo_board.each_with_index do |item, index|
        @bingo_board[index][3] = @column[index]
      end
    elsif @letter_call == "o"
      @bingo_board.each_with_index do |item, index|
        @bingo_board[index][4] = @column[index]
      end
    end
  end

  def print_board
    selection(@letter_call, @number_call)
    check_column(@letter_call, @number_call, @bingo_board)
    replace_with_x(@column, @number_call, @bingo_board)
    pretty_board = remake_board(@column, @letter_call, @bingo_board)
    p pretty_board[0]
    p pretty_board[1]
    p pretty_board[2]
    p pretty_board[3]
    p pretty_board[4]
  end

end

# Refactored Solution

  class BingoBoard

    def initialize(board)
      @bingo_board = board
    end

    def selection
      @letter_call = ["B", "I", "N", "G", "O"].sample
      @number_call = rand(1...100)
      p "Selection is: #{@letter_call}#{@number_call}"
    end

    def check_and_insert
      if @letter_call == "B"
        @bingo_board.each_with_index do |num, index|
          @bingo_board[index][0] == @number_call ? @bingo_board[index][0] = "X" : num
        end
      elsif @letter_call == "I"
        @bingo_board.each_with_index do |num, index|
          @bingo_board[index][1] == @number_call ? @bingo_board[index][1] = "X" : num
        end
      elsif @letter_call == "N"
        @bingo_board.each_with_index do |num, index|
          @bingo_board[index][2] == @number_call ? @bingo_board[index][2] = "X" : num
        end
      elsif @letter_call == "G"
        @bingo_board.each_with_index do |num, index|
          @bingo_board[index][3] == @number_call ? @bingo_board[index][3] = "X" : num
        end
      elsif @letter_call == "O"
        @bingo_board.each_with_index do |num, index|
          @bingo_board[index][4] == @number_call ? @bingo_board[index][4] = "X" : num
        end
      end
    end

    def print_board
      p @bingo_board[0]
      p @bingo_board[1]
      p @bingo_board[2]
      p @bingo_board[3]
      p @bingo_board[4]
    end

  end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

10.times do
new_game.selection
new_game.check_and_insert
new_game.print_board
sleep 1.0
end


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# Pseudocoding for this challenge was kind of a nightmare. It was really hard for me to figure out how to describe what I wanted
# to do in plain English and, honestly, judging from what I did write down, I still didn't do a very good job with that. I found
# this challenge to be very complex, and I thought it was made more complex by the fact that DBC predetermined we needed to
# separate this bingo class into a few different methods. I was wracking my brain trying to figure out how all of these methods
# would interact and how I could organize instance variables to accomplish that. I think I got too bogged down by thinking in
# Ruby rather than thinking in English. Pseudocoding is still hard for me because I hesitate to write down anything I wouldn't
# know how to implement in Ruby, so I get stuck at steps where I know what to do conceptually but I don't know how to write the
# code for it. I think I need to push past that and write down the concept/task I want to be completed and worry about the Ruby
# syntax later; at least I'll have a path set by my pseudocode, when actually coding, I can deviate if necessary.

# What are the benefits of using a class for this challenge?

# Since the output of placing an X in a certain index amongst nested arrays is fairly complex to achieve, a class helps to organize
# all of the necessary steps and calculations to get from random letter/number selection to "X" on the bingo board input. The class
# helps to house a handful of related methods that need one another to work and complete the task at hand. It's much easier to keep
# these methods contained in a class so that when you create a new instance of the class, that object contains all of these methods
# and we would only need to call one of them to access all of them (assuming they are all intertwined with instance variables and
# such). If we didn't use a class, we would have to chain a whole mess of methods together on one object just to get our desired
# result; that would look a bit more messy.

# How can you access coordinates in a nested array?

# You can access an item in a nested array by using the standard bracket notation for accessing an index, but you need to "layer"
# the brackets to find the right item in the nest. For example, say I have an array, called my_array, that contains three arrays,
# each with three items. Say I want the second item in the second array. OK, we know that the second item in an array is index 1,
# but if I just call my_array[1], I will get the whole nested array stored at index 1 in my_array. I don't want that; I want index 1
# of the nested array in index 1 of my_array. Well, there's kind of the answer. We can do the following: my_array[1][1], and that
# will output the second item in the second nested array. This "layering" of the bracket notation would work for any item throughout
# the nested array.

# What methods did you use to access and modify the array?

# The method each_with_index was absolutely key. This method executes a block of code for each index in an array. When going through
# the nested arrays of the bingo board and trying to find a match of the letter/number pair selected, I needed to focus on the index
# numbers for each nested array, since that would ultimately lead me to the numbers I needed to compare with. So, for example, if
# I wanted to look in the "b" column, I needed to call each_with_index on our bingo board and look at each index in the bingo_board
# with sub-index [0], which is the position of "column 1" in the bingo board, which corresponds to column b. I did this for each
# column, going up by 1 sub-index for each one to access each "column" of the board.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it
# serve, and how is it called?

# So, I was having a really hard to figuring out how to insert "X" if the number in the bingo board matched the letter/number pair
# selected. Eventually, I realized that I could just use the bracket notation to point to specific index and set it equal to "X",
# however, before I came to that simple realization, I scoured the Ruby Docs to find anything that could help me. My research led me
# to a method called "rassoc" and it's cousin "assoc." I saw "rassoc" and was like "maybe that stands for re-associate" or something
# along those lines; I thought it would be a method to replace a value in an array. Well, I was wrong about that, but I read on
# anyway and found "rassoc" and "assoc" to be useful methods for something else. Each method works on any array that is itself made
# up of arrays and takes in an argument. Based on that argument, it will search the array and print out the nested array that
# contains that argument in a specific position. For "rassoc", the argument would be the second item in the nested array and for
# "assoc" the argument would be the first item in the nested array. If the argument passed is not found in the array, the method
# returns nil. I thought this was a pretty cool way to access values in a nested array, but the way the methods work didn't exactly
# fit with how the bingo board challenge was supposed to be completed.

# How did you determine what should be an instance variable versus a local variable?

# Anything value that I knew I needed to use in multiple methods I made an instance variable and anything that was temporaray. or
# just needed within one method, I made local. I didn't actually use many local variables, except for the purposes of printing my
# pretty board to the console. I found instance variables to be the most powerful and important for this challenge. This is
# particularly true for the initial letter/number pair selected, as those values needed to be used in every single method in order
# to determine if the pair appears on the board or not; in fact, the whole program hinges on those two values being assigned to
# instance variables. In my initial solution, I also used an instance variable when isolated a particulalr "column" of the board
# based on the letter selected.

# What do you feel is most improved in your refactored solution?

# Honestly, taking all of the small methods and making them into one bigger method made things a bit cleaner. I realized that, while
# I had three seperate methods to check the column of the board based on the letter called, search it for the number called, and
# then replce that number with X if it matches the number called, I could actually combine all of those methods into a few short
# lines of code. Once I went down that train of thought, I just made one method that both checked the columns and inserted the "X"
# if there was a match. As you can see, it's a big IF conditional that triggers a particular iteration of the bingo board based
# on the letter called. I also made use of the tenery operator for the insertion block of code; I thought it made the method as
# a whole read better and it helped to consolidate a few lines of unneccessary code.