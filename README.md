# neo4j_migrations
A draft implementation for neo4j migrations

## How to use

Add this to the Gemfile:

```ruby
gem 'neo4j_migrations', github: 'ProGM/neo4j_migrations'
```

Create a new Migration
```bash
rails g neo4j_migrations:migration MyMigrationName
```

It will create a new file in `db/neo4j-migrate/xxxxxxxxx-my-migration-name.rb` like this:

```ruby
class AddHiddenToDesks < Neo4jMigrations::Migration
  def run
    # Insert here your queries!
  end
end
```

To run migrations, use this:

```bash
rake neo4j_migrations:run
```
