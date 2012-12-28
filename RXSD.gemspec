pkg_files = ['COPYING', 'LICENSE', 'Rakefile', 'README.rdoc']
pkg_files += Dir.glob('lib/**/*.rb')

Gem::Specification.new do |s|
  s.name = 'rxsd'
  s.version = '0.6.0'
  s.files = pkg_files
  s.executables << 'xsd_to_ruby' << 'rxsd_test'

  s.required_ruby_version = '>= 1.9.1'
  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.3")

  s.add_dependency('libxml-ruby', '~> 2.3.1')
  s.add_dependency('active_support', '~>3.0')
  s.add_development_dependency('rspec', '~> 2.8.0')

  s.author = "Mo Morsi"
  s.email = "mo@morsi.org"
  s.description = %q{A library to translate xsd schemas and xml implementations into ruby classes/objects}
  s.summary = %q{A library to translate xsd schemas and xml implementations into ruby classes/objects}
  s.homepage = %q{http://morsi.org/projects/RXSD}
end
