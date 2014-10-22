Gem::Specification.new do |s|
  s.name = %q{dead_mans_snitch}
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kyle Burton <kyle.burton@gmail.com>"]
  s.date = %q{2012-10-07}
  s.description = %q{A gem to make using https://deadmanssnitch.com simple.}
  s.email = ["kburton@gmail.com"]
  s.extra_rdoc_files = ["README.textile"]
  s.files = ["README.textile", "lib/dead_mans_snitch.rb"]
  s.has_rdoc = false
  s.homepage = %q{https://github.com/kyleburton/dead-mans-snitch}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A gem to make using https://deadmanssnitch.com simple.}

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rspec', '>= 3.0.0'
  s.add_development_dependency 'webmock'
end
