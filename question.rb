class Question

  attr_reader :answer
  # initializes question for player to answer
  def initialize
    @answer = answer
  end

  # generate question for player to answer
  def generate_question
    number_one = rand(0..50)
    number_two = rand(0..50)
    @answer = number_one + number_two
    puts "What does #{number_one} plus #{number_two} equal?"
  end

end