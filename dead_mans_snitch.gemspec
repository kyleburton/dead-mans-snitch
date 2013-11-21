Gem::Specification.new do |s|
  s.name = %q{dead_mans_snitch}
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kyle Burton <kyle.burton@gmail.com>"]
  s.date = %q{2012-10-07}
  s.description = %q{A gem to make using https://deadmanssnitch.com simple.}
  s.email = ["kburton@gmail.com"]
  s.extra_rdoc_files = ["README.textile"]
  s.files = ["README.textile", "lib/dead_mans_snitch.rb"]
  s.has_rdoc = false
  s.homepage = %q{https://github.com/kyleburton/dead-mans-snitch}
  # s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  # s.rubyforge_project = %q{credit_card_validator}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A gem to make using https://deadmanssnitch.com simple.}
  # s.test_files = ["test/test_credit_card_validator.rb", "test/test_helper.rb"]

  deps = [
  ]

  # if s.respond_to? :specification_version then
  #   current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
  #   s.specification_version = 2

  #   if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
  #     s.add_development_dependency(%q<newgem>, [">= 1.2.3"])
  #     s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
  #   else
  #     s.add_dependency(%q<newgem>, [">= 1.2.3"])
  #     s.add_dependency(%q<hoe>, [">= 1.8.0"])
  #   end
  # else
  #   s.add_dependency(%q<newgem>, [">= 1.2.3"])
  #   s.add_dependency(%q<hoe>, [">= 1.8.0"])
  # end
end
