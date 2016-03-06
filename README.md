# SimplySite

> Because being a web-dev is hard enough

SimplySite is a no-nonsense static site builder, designed to make building sites easier than ever.

## Features

* Automatic creation of a new project
* Check for valid project without building
* Build from any directory to another directory
* Support of any markup language through the venerable Tilt Gem

## Installation

		$ gem install SimplySite

## Usage

### New

		$ simply-site create [path]
		
If *path* is not specified, SimplySite creates a new project in the current directory.
		
If *path* is specified, SimplySite creates a new project in that directory.
		
### Check
		
		$ simply-site check [path]
		
If *path* is not specified, SimplySite validates the project in the current directory.
    		
If *path* is specified, SimplySite validates the project in that directory.
		
### Build

		$ simply-site build [src] <dest>
		
If *src* is not specified, SimplySite builds the project in the current directory, placing it in *dest*.
    		
If *path* is specified, SimplySite builds the project in that directory, placing it in *dest*.
		
### Help

		$ simply-site help

## Contributing

1. Fork it ( https://github.com/[my-github-username]/SimplySite/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
