require File.dirname(__FILE__) + '/../spec_helper'

describe "Integration" do
  
  it "should learn OR in 4 runs" do
    LEARNRATE = 1

    @perceptron = Perceptron.new( :activation_function => :binary,
                                  :synapses => 2,
                                  :bias => 0)

    # first run
    def run times=1
      times.times do
        @perceptron.train [0, 0], 0
        @perceptron.train [0, 1], 1
        @perceptron.train [1, 0], 1
        @perceptron.train [1, 1], 1
      end
    end

    run 4
    @perceptron.recall( [0, 0]).should eql(0)
    @perceptron.recall( [0, 1]).should eql(1)
    @perceptron.recall( [1, 0]).should eql(1)
    @perceptron.recall( [1, 1]).should eql(1)
  end
  
end