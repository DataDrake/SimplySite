require_relative '../SimplySite'
require_relative '../SimplySite/cli/check'
require 'commander'

module SimplySite
	class CLI
		include Commander::Methods
		def run
			program :name, 'simply-site'
			program :version, SimplySite::VERSION
			program :description, 'SimplySite: Because being a web-dev is hard enough'
			program :help, 'Author', 'B. T. Meyers <bmeyers@datadrake.com>'

			command :create do |c|
				c.syntax = 'simply-site create [path]'
				c.description = 'Creates a new site in either the current path or a specified directory'
				c.action do |args,options|
					SimplySite.create options , args
				end
			end

			command :build do |c|
				c.syntax = 'simply-site build [src] <dest>'
				c.description = 'Builds the site residing in either the current directory, or the specified directory, placing the output into the specified destination'
				c.action do |args,options|
					SimplySite.build options , args
				end
			end

			command :run do |c|
				c.syntax = 'simply-site run [path]'
				c.description = 'Builds the site residing in either the current directory, or the specified directory, into a temporary directory and starts a web server'
				c.action do |args,options|
					SimplySite.run options , args
				end
			end

			command :check do |c|
				c.syntax = 'simply-site check [path]'
				c.description = 'Checks the site residing in either the current directory, or the specified directory, for a valid configuration'
				c.action do |args,options|
					SimplySite.check options , args
				end
			end

			run!
		end
	end
end