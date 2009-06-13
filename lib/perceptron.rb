# -*- coding: utf-8 -*-

class Perceptron
  include ActivationFunctions
  @synapses
  @bias # Schwellwert
  @f # Aktivierungsfunktion
  @do_trace # prints trace
  
  def initialize options={}
    @bias = options[:bias] ||= 0.0
    @do_trace = options[:trace] ||= false
    
    if options[:activation_function].is_a? Symbol
      @f = method options[:activation_function]
    end
    
    if options[:synapses].is_a? Integer
      @synapses = Array.new(options[:synapses]) { Synapse.new }
    end
    
  end
  
  def a
    net = -(@bias)
    @synapses.each { |synapse|
      net += (synapse.fire)
    }
    @f.call net
  end
  
  #Training
  def train input=[], output=1
    raise "size of traindata does not correspond with input size" if input.size != @synapses.size

    @synapses.each_with_index { |synapse, i|
      synapse.x = input[i]
    }
    a = self.a()
    
    unless a == output
      y = output
      self.learn y-a
    end
    
    if @do_trace
      puts " #{input[0]} |  #{input[1]} | #{output} || #{a}"
    end
  end
  
  # Learning
  def learn error
    # Wichtungen der Synapsen trainieren
    @synapses.each { |synapse|
      synapse.backpropagate error # backpropagate error
    }
    # Schwellwert trainieren
    @bias -= LEARNRATE * error
  end
end