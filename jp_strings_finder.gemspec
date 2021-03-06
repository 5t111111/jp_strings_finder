# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jp_strings_finder/version"

Gem::Specification.new do |spec|
  spec.name          = "jp_strings_finder"
  spec.version       = JpStringsFinder::VERSION
  spec.authors       = ["Hirofumi Wakasugi"]
  spec.email         = ["baenej@gmail.com"]

  spec.summary       = "Find string literals using Japanese chanracters in them"
  spec.description   = "Find string literals using Japanese chanracters in them"
  spec.homepage      = "https://github.com/5t111111/jp_strings_finder.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "colorize", "~> 0.8"
  spec.add_runtime_dependency "terminal-table", "~> 1.8"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "tapp"
  spec.add_development_dependency "awesome_print"
end
