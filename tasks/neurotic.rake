# -*- coding: utf-8 -*-

require 'lib/neurotic'
 
task :train_or do
  LEARNRATE = 1

  # Lernen der ODER Prädikats
  @perceptron = Perceptron.new( :activation_function => :binary,
                                :synapses => 2,
                                :bias => 0,
                                :trace => true)

  # first run
  def run times=1
    times.times do
      puts "x1 | x2 | y || a"
      @perceptron.train [0, 0], 0
      @perceptron.train [0, 1], 1
      @perceptron.train [1, 0], 1
      @perceptron.train [1, 1], 1
    end
  end

  run 4
end
