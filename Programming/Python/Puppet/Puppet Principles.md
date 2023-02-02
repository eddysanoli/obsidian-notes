# Puppet Principles

## Notes
- Has a package manager
- Main programming content inside `manifests`. File termination is `.pp`
- Doesnt use dots to index an objects children, instead it uses two colons
```puppet
  # Use this
  object::element::subelement

  # Instead of this
  object.element.subelement
```

- Templates are written in `.erb` templating format: A templating format for ruby. Due to this you can insert ruby snippets in there.
```ruby
<% if @operatingsystem['release']['major'] > b %>
```

- The templates allow users to execute different scripts depending on the type of system you are managing. For example: If a system has debian and another has redhat, you can change the "yum" or "deb" prefix at the beggining of install commands.
- Theres another templating language `.epp`. This has some improvements over `.erb` but Arian says that you can do almost everything with `.erb`.
- Setup the source file:
```bash
# Resource key. You can index it like a key value pair: 
#   etc_hosts = file['/etc/hosts'].
# NOTE: If you change the key to a regular word like 'hosts', you have 
# to specify the real path using: 
#   path = '/etc/hosts'
file {'/etc/hosts':
	ensure => file,

	# Where's the file coming from
	source => 'puppet://modules/oviview/etc/hosts',

	# File permissions (chmod)
	mode => '0755',
	owner => 'root'

	# Name to reference this "file" creation on another file creation
	alias => '',
	audit => '',

	# Alias of the file or declaration that you need before creating this file
	# Basically used to create an order for file creation as a regular puppet
	# file wont execute everything linearly.
	before => 'alias-of-next-resource',

	# The opposite of before: Execute after another file is created
	require => 'alias-of-previous-resource',

	# Reboot if a change in another element is detected
	subscribe => 'alias-of-linked-element',

	# Notify when something happens to this resources
	notify => [
		File['another-file'],
	],

	# Name of the list that this resource belongs to
	tag => ['list']

	
	
}
```
- Ensure packages are installed
```bash
package { 'pandas':
	ensure => absent,
	provider => pip3
}
```

- In a standalone installation of puppet, you would have to care about the puppet-main file. However because of the use of the UI `THIS`, thats not required anymore.
- Puppet run:
```bash
puppet 
```