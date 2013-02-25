# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbtree2/version'

Gem::Specification.new do |gem|
  gem.name          = "rbtree2"
  gem.version       = Rbtree2::VERSION
  gem.authors       = ["Keisuke KITA"]
  gem.email         = ["kei.kita2501@gmail.com"]
  gem.description   = %q{RB-Trees supported Ruby2 }
  gem.summary       = %q{RB-Trees supported Ruby2 }
  gem.extensions    = ["ext/extconf.rb"]
  gem.homepage      = "https://github.com/kitak/rbtree2"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
end
