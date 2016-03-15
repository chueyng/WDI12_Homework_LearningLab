namespace :db do
  desc "Drop, Create and Migrate the database"
  task :regenerate do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    # sh 'annotate'
  end
end

