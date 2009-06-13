# -*- coding: utf-8 -*-

class Synapse
  @x #input
  @w #wichtung
  
  def initialize
    @w = 0.0
  end
  
  def fire
    return @x * @w if @x.is_a? Numeric
    return @x.a * @w if @x.is_a? Perceptron
  end
  
  def backpropagate error
    @w += (LEARNRATE * @x * error)
  end
  
  # Setter for Input
  def x= x
    @x = x
  end
  
end