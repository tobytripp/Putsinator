# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{putsinator}
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Toby Tripp"]
  s.date = %q{2010-03-29}
  s.description = %q{Add File:Line to any 'puts' call made within a test.}
  s.email = %q{toby.tripp+github@gmail.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "init.rb",
     "install.rb",
     "lib/putsinator.rb",
     "putsinator.gemspec",
     "test/putsinator_test.rb",
     "test/test_helper.rb",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/tobytripp/Putsinator}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Assassinate extraneous test output.}
  s.test_files = [
    "test/putsinator_test.rb",
     "test/test_helper.rb"
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
