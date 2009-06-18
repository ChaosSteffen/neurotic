# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{neurotic}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steffen Schr\303\266der"]
  s.date = %q{2009-06-19}
  s.description = %q{Create artificial neuronal nets.}
  s.email = %q{steffen@schroeder-blog.de}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "Manifest",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/activation_functions.rb",
     "lib/neurotic.rb",
     "lib/perceptron.rb",
     "lib/synapse.rb",
     "neurotic.gemspec",
     "spec/neurotic/activation_functions_spec.rb",
     "spec/neurotic/neurotic_spec.rb",
     "spec/neurotic/perceptron_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "tasks/neurotic.rake"
  ]
  s.homepage = %q{http://github.com/santino/neurotic}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Create artificial neuronal nets.}
  s.test_files = [
    "spec/neurotic/activation_functions_spec.rb",
     "spec/neurotic/neurotic_spec.rb",
     "spec/neurotic/perceptron_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
