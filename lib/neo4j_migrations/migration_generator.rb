# frozen_string_literal: true
module Neo4jMigrations
  class MigrationGenerator < Rails::Generators::NamedBase
    def create_migration_file
      real_file_name = "#{Time.zone.now.strftime('%Y%m%d%H%M%S')}_#{file_name.parameterize}"
      class_name = file_name.camelize

      file_content = %(class #{class_name} < Neo4jMigrations::Migration
  def run
  end
end
)
      create_file "db/neo4j-migrate/#{real_file_name}.rb", file_content
    end
  end
end
