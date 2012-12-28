GEM_NAME="rxsd"
PKG_VERSION='0.5.2'
PKG_FILES = FileList['lib/**/*.rb', 'COPYING', 'LICENSE', 'Rakefile', 'README.rdoc', 'spec/**/*.rb' ]

Gem::Specification.new do |s|
  s.name = GEM_NAME
  s.version = PKG_VERSION
  s.files = PKG_FILES
  s.executables << 'xsd_to_ruby' << 'rxsd_test'

  s.required_ruby_version = '>= 1.9.1'
  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.3")

  s.add_dependency('libxml-ruby', '~> 2.3.1')
  s.add_dependency('active_support', '~>3.0')
  s.add_development_dependency('rspec', '~> 2.8.0')

  s.author = "Mo Morsi"
  s.email = "mo@morsi.org"
  s.date = Date.today.to_s
  s.description = %q{A library to translate xsd schemas and xml implementations into ruby classes/objects}
  s.summary = %q{A library to translate xsd schemas and xml implementations into ruby classes/objects}
  s.homepage = %q{http://morsi.org/projects/RXSD}
end
