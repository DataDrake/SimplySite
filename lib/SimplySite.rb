require_relative 'SimplySite/cli'
require_relative 'SimplySite/version'

require 'commander'

module SimplySite
	extend Commander::UI

	SS_BASE_DIRS = %w(assets layouts pages vars)

end
