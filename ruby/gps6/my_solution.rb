# Virus Predictor

# I worked on this challenge with: Mitchell Hendee.
# We spent 1:30 hours on this challenge.

# EXPLANATION OF require_relative
# Require relative allows the file to interact with other files in the same directory
# The difference between it and 'require' needs a definite path to the new file.
require_relative 'state_data'

class VirusPredictor

# Creates instance variables for continued class use from state_data.rb
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Public class method that when called upon uses instance variables from initialization to run private methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# The purpose of private is to prevent any methods below the syntax from being accessed outside of the class.
  private

  attr_reader :state, :population, :population_density

# predicted deaths is solely based on population density.
  def predicted_deaths
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# A speed variable counter starts at 0.0
# Create if statement from population density
# The higher the population density the lower the increase of speed
# print a message stating how quickly the virus spreads
  def speed_of_spread
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
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

STATE_DATA.each do |state, data|
  report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  report.virus_effects
end

#=======================================================================
# Reflection Section