namespace :neo4j_migrations do
  desc 'Runs all pending migrations'
  task :run, :environment do
    path = Rake.original_dir
    files = Dir[Rails.root.join('db', 'neo4j-migrate', '*.rb')].sort
    files.each do |file|
      require file

      migration_id, file_name = *File.basename(file, '.rb').split('_', 2)
      task_name_constant = file_name.split('_').map(&:capitalize).join('')
      migration = task_name_constant.constantize.new(migration_id, path)
      migration.migrate
    end
  end
end
