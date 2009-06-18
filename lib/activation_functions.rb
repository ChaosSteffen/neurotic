# -*- coding: utf-8 -*-

module ActivationFunctions
  def self.logistic net
    1 / (1 + Math::E**( (-1)*net ) )
  end
  
  def self.binary net
    net > 0 ? 1 : 0
  end
end
