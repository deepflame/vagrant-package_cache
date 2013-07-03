# Vagrant Package Cache

This Vagrant 1.2+ plugin caches Linux packages on the host machine to make provisioning faster.
No need to wait for packages to download that you already have in the cache.  
Currently Apt (Ubuntu, Debian) is supported.

## Installation

Make sure you have Vagrant 1.2+ installed.  
Then run on the command line:

    vagrant plugin install vagrant-package_cache

## Usage

There is nothing to do. Just install it and the next time you proviso provision your vagrant box it will cache the apt packages of the guest machine.

## Todo

- support for Yum
- ...

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
