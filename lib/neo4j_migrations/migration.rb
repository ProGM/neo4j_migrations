# frozen_string_literal: true
require 'neo4j/migration'

module Neo4jMigrations
  class Migration < ::Neo4j::Migration
    def initialize(migration_id, _path)
      @migration_id = migration_id
    end

    def migrate
      Benchmark.realtime do
        Neo4j::Transaction.run do
          output "Running migration #{@migration_id}..."
          migration = SchemaMigration.new(migration_id: @migration_id)
          migration.save ? run : output('Already done.')
        end
      end
    end

    def run
      raise NotImplementedError
    end

    def execute(string)
      Neo4j::Session.query(string).to_a
    end
  end
end
