# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gaga/version"

Gem::Specification.new do |s|
  s.name        = "gaga"
  s.version     = Gaga::VERSION
  s.authors     = ["Matt Sears"]
  s.email       = ["matt@mattsears.com"]
  s.homepage    = "http://mtts.rs/gaga"
  s.summary     = %q{Gaga is a Git-backed key/value store}
  s.description = %q{Gaga is a Git-backed key/value store}
  s.rubyforge_project = "gaga"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "grit"
end
