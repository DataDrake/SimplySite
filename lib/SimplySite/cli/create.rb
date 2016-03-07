require_relative '../../SimplySite'

module SimplySite

	def self.createDirs(path)

		puts 'Creating Base Directories...'
		Dir.chdir(path) do
			SS_BASE_DIRS.each do |d|
				unless Dir.exist? d
					begin
						Dir.mkdir(d,0700)
					rescue => e
						say_error 'ERROR: could not create directory'
						say_error "REASON: #{e.message}"
					end
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
			begin
				Dir.mkdir(path,0700)
			rescue => e
				say_error 'ERROR: could not create directory'
				say_error "REASON: #{e.message}"
				say_error 'FAIL: New Project Not Created'
				exit(1)
			end
		end
		exit(1) unless createDirs(path)

		say_ok 'DONE: New Project Created'
	end
end