# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = "fluent-plugin-rename-key"
  s.version     = "0.1.4"
  s.date        = "2016-04-04"
  s.license     = "Apache-2.0"
  s.authors     = ["Shunwen Hsiao"]
  s.email       = "hsiaoshunwen@gmail.com"
  s.homepage    = "https://github.com/shunwen/fluent-plugin-rename-key"
  s.summary     = %q[Fluentd output plugin. Rename keys which match given regular expressions, assign new tags and re-emit the records.]
  s.has_rdoc    = false

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency "fluentd"
  s.add_development_dependency "test-unit", ">= 3.1.0"
  s.add_development_dependency "rake"
  s.add_development_dependency 'coveralls'
end
