Kernel.load 'lib/ciccio/version.rb'

Gem::Specification.new {|s|
	s.name         = 'ciccio'
	s.version      = Ciccio.version
	s.author       = 'meh.'
	s.email        = 'meh@paranoici.org'
	s.homepage     = 'http://github.com/meh/ciccio'
	s.platform     = Gem::Platform::RUBY
	s.summary      = 'A toy "LISP" with ABI compatibility with C'

	s.files         = `git ls-files`.split("\n")
	s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
	s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.require_paths = ['lib']

	s.add_dependency 'parslet'
	s.add_dependency 'orgasm'

	s.add_development_dependency 'rake'
	s.add_development_dependency 'rspec'
}
