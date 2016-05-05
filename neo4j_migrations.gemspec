lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'neo4j_migrations/version'

Gem::Specification.new do |s|
  s.name     = 'neo4j_migrations'
  s.version  = Neo4jMigrations::VERSION
  s.required_ruby_version = '>= 2.0.0'

  s.authors  = 'Piero Dotti'
  s.email    = 'progiemmeh@gmail.com'
  s.summary = 'A graph database for Ruby'
  s.license = 'MIT'
  s.description = <<-EOF
A Neo4j OGM (Object-Graph-Mapper) for use in Ruby on Rails and Rack frameworks heavily inspired by ActiveRecord.
  EOF

  s.require_path = 'lib'
  s.files = Dir.glob('{lib}/**/*') + %w(neo4j_migrations.gemspec)

  s.add_dependency('neo4j', '~> 7.0.0')
end
