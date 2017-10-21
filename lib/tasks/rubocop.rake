require 'rubocop/rake_task'

namespace :quality do
	RuboCop::RakeTask.new(:rubocop) do |task|
	  task.patterns = %w{
	    lib/**/*.rb
	    spec/**/*.rb
	  }
	  task.formatters  = ['fuubar']
	end
end