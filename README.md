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

## Project Layout

### /assets

Use this directory to store all of your statically served files. Perfect for images, video, JavaScript, and helper CSS. It will be copied directly into your output folder. Be sure to point links here.



### /layouts

This directory is where all of you layouts live.

### /pages

This directory and its subdirectories contain all of the markup for individual pages. Its structure is the same as the resulting file tree in the output directory.

### /vars

This directory and its subdirectories contain additional properties to be used by templates and markup.

The following items are possible:

* /vars/properties.json --- Here you can store all of the properties to hand to every layout and page.
* /vars/\[path\]/properties.json  --- A specific folder in */pages* can be provided with its own additional properties.
	
Properties are parsed from top to bottom, with values being overridden if specified in a deeper directory.

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
