# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{neurotic}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steffen Schröder"]
  s.date = %q{2009-06-11}
  s.description = %q{Create artificial neuronal nets.}
  s.email = %q{steffen@schroeder-blog.de}
  s.extra_rdoc_files = ["lib/activation_functions.rb", "lib/neurotic.rb", "lib/perceptron.rb", "lib/synapse.rb", "README.rdoc", "tasks/neurotic.rake"]
  s.files = ["lib/activation_functions.rb", "lib/neurotic.rb", "lib/perceptron.rb", "lib/synapse.rb", "Manifest", "Rakefile", "README.rdoc", "tasks/neurotic.rake", "neurotic.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/santino/neurotic}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Video_info", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{neurotic}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Create artificial neuronal nets.}
end