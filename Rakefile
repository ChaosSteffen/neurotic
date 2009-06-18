# -*- coding: utf-8 -*-

require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "neurotic"
    gemspec.summary = "Create artificial neuronal nets."
    gemspec.email = "steffen@schroeder-blog.de"
    gemspec.homepage = "http://github.com/santino/neurotic"
    gemspec.description = "Create artificial neuronal nets."
    gemspec.authors = ["Steffen Schröder"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
