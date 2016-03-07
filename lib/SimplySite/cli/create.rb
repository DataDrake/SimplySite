require_relative '../../SimplySite'

module SimplySite

	def self.createDirs(path)

		puts 'Creating Base Directories...'
		Dir.chdir(path) do
			SS_BASE_DIRS.each do |d|
				unless Dir.exist? d
					Dir.mkdir(d,0700)
				end
			end
		end
		say_ok 'DONE: Base Directories Created'
	end

	def self.create(options,args)
		path = Dir.getwd
		case args.length
			when 1
				path = args[0]
			else
				usage
				exit(1)
		end
		unless Dir.exist?(path)
			Dir.mkdir(path,0700)
		end
		exit(1) unless createDirs(path)

		say_ok 'DONE: New Project Created'
	end
end