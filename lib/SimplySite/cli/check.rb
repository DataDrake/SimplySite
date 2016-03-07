require_relative '../../SimplySite'

module SimplySite



	def self.checkDirs(path)
		puts 'Checking Directories...'
		ok = true
		SS_BASE_DIRS.each do |d|
			unless Dir.entries(path).include? d
				say_warning "Missing folder '#{d}'"
				ok = false
			end
		end
		if ok
			say_ok 'PASS: all directories found'
			puts "\n"
		else
			say_error 'FAIL: one or more missing directories'
		end
		ok
	end

	def self.check(options,args)
		path = Dir.getwd
		case args.length
			when 1
				path = args[0]
			else
				usage
				exit(1)
		end
		unless Dir.exist?(path)
			say_error "ERROR: Path '#{path}' does not exist"
			exit(1)
		end
		exit(1) unless checkDirs(path)

		say_ok 'DONE: All tests pass'
	end
end