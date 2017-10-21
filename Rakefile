require 'rspec/core/rake_task'

FileList['./lib/tasks/**/*.rake'].each { |task| load task }

RSpec::Core::RakeTask.new(:spec)

task :default => [:spec]
