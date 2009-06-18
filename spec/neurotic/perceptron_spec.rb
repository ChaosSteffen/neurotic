require File.dirname(__FILE__) + '/../spec_helper'

describe Perceptron do

  it "should be a Perceptron" do
    Perceptron.new.should be_an_instance_of(Perceptron)
  end

  it do
    Perceptron.new.should respond_to(:recall)
  end
  
end
