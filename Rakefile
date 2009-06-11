require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('neurotic', '0.1') do |p|
  p.description    = "Create artificial neuronal nets."
  p.url            = "http://github.com/santino/neurotic"
  p.author         = "Steffen Schröder"
  p.email          = "steffen@schroeder-blog.de"
  p.ignore_pattern = ["tmp/*", "script/*"]
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
