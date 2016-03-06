require_relative 'lib/SimplySite'

task :build do
	system 'gem build SimplySite.gemspec'
end

task :release => :build do
	system "gem push SimplySite-#{SimplySite::VERSION}.gem"
end

task :install => :build do
	system "sudo gem install -N -l SimplySite-#{SimplySite::VERSION}.gem"
end
