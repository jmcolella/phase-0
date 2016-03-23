# Virus Predictor

# I worked on this challenge with: Christyn Budzyna.
# We spent 1.25 hours on this challenge.

# EXPLANATION OF require_relative
#
# What does it do?
# uses another Ruby file as reference for the file that it is called in
#
# How does it work?
# it accesses data from another file on your machine
#
# Differ from 'require'?
# require_relative is used to reference files that are located on your
# local machine and are therefore "relative" to the file it is called in.
#
# require is used to load files that may be external to your local
# machine and looks through thr Ruby system to find that file

require_relative 'state_data'

class VirusPredictor

  # initializes a new instance of the class to take in three arguments
  # and assigns each of those three arguments to an instance variable
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calling two other instance methods within the class and passing
  # the instance variables from initialize as arguments into each one
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # takes in three arguments and passes them through an IF statement
  # to define the number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # determines the "rate" of spread for the disease in months; does this
  # by using a "speed" counter
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, info|
  each_state = VirusPredictor.new(state, info[:population_density], info[:population])
  each_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

=begin
What are the differences between the two different hash syntaxes shown in the state_data file?

The hash in the state_data file uses two types of keys: strings and symbols. The strings are used
for the first level of keys, the state names, and then the symbols are used within the nested
hash for the population data. The big difference between using the string vs. the symbol as a
hash key is that symbols take up far less space in memory. This is in part due to the fact that
they are immutable and unique; if you were to create a string "Hello" fifty times, that string
would have 50 different object ids, but if you create a symbol ":Hello", no matter how many times
you make that symbol, it will always have the same oject id. So, in the case of our state_data
hash, it helps to use symbols for the keys "population_density" and "population" because they are
being used 50 times, so we want to limit the amount of object ids created and help Ruby process
the hash faster.

What does require_relative do? How is it different from require?

Require_relative allows you to reference another Ruby file that is located locally on your
machine, say in the same directory as the file you are working on. In essence, you can
require_relative file2 in file1 if file2 is located within the same local machine as file1. On
the other hand, require allows you to reference a file that is not on your local machine, instead
it may be an external file downloaded to the Ruby LOAD PATH.

What are some ways to iterate through a hash?

You can iterate through a hash by calling the method each to work with both the keys and values
in the hash. You can also use each_key and each_value to just work with those specific portions
of the hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?

The major thing my pair and I refactored was the fact that virus_effects called methods that
passed in arguments, even though those methods were just making use of instance variables within
the class. In that case, it wasn't necessary to give these methods arguments (predicted_deaths
and speed_of_spread) because each of those methods didn't even make use of those argument
variables, they just relied on the instance variables to function.

What concept did you most solidify in this challenge?

I would say the idea of require_relative vs. require was made way more clear in this challenge. I
read about both in WGR, but it was kind of hazy and hard to figure out what he was talking about.
Going over these two concepts with my pair/guide was very helpful in figuring out the difference
between the two. I also got a better handle on how we can initialize a class. I didn't think we
could initialize a class within an each method as a block of code, but low and behold, it worked.
That's definitely something to keep in mind when I have a similar program where I need to create
many instances of a class at the same time.

=end