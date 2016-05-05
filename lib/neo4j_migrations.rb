# frozen_string_literal: true

module Neo4jMigrations
end

require 'neo4j_migrations/version'
require 'neo4j_migrations/schema_migration'
require 'neo4j_migrations/migration_generator'
require 'neo4j_migrations/migration'
require 'neo4j_migrations/migration'
load 'neo4j_migrations/rake_tasks/run.rake'
