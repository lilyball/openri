Gem::Specification.new do |s|
  s.name = "openri"
  s.version = "0.1"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version
  s.authors = ["Kevin Ballard"]
  s.date = "2008-05-14"
  s.default_executable = "openri"
  s.description = "Quickly open documentation for your Gems in your browser"
  s.email = "kevin@sb.org"
  s.executables = ["openri"]
  s.extra_rdoc_files = ["LICENSE", "README", "bin/openri"]
  s.files = ["bin/openri", "lib/openri.rb", "LICENSE", "README", "openri.gemspec"]
  s.has_rdoc = true
  s.homepage = "http://github.com/kballard/openri"
  s.rubygems_version = "1.1.1"
  s.summary = s.description
  s.rdoc_options = ["--inline-source", "--title", "openri", "--main", "README"]
end
