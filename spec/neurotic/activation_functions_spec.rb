require File.dirname(__FILE__) + '/../spec_helper'

describe ActivationFunctions do
  
  it "should implement logistic Function" do
    ActivationFunctions.should respond_to(:logistic)
  end
  
  it "should implement logistic Function" do
    ActivationFunctions.send(:logistic, -10).should satisfy { |n| n < 0.0001 }
    ActivationFunctions.send(:logistic, 0).should eql(0.5)
    ActivationFunctions.send(:logistic, 10).should satisfy { |n| n > 0.9999 }
  end
  
  it "should implement binary Function" do
    ActivationFunctions.should respond_to(:binary)
  end
  
  it "should implement binary Function" do
    ActivationFunctions.send(:binary, -1).should eql(0)
    ActivationFunctions.send(:binary, 0).should eql(0)
    ActivationFunctions.send(:binary, 0.1).should eql(1)
    ActivationFunctions.send(:binary, 0.5).should eql(1)
    ActivationFunctions.send(:binary, 1).should eql(1)
  end
  
end
