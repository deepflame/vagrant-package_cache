begin
  require "vagrant"
rescue LoadError
  raise "The Vagrant PackageCache plugin must be run within Vagrant."
end

# This is a sanity check to make sure no one is attempting to install
# this into an early Vagrant version.
if Vagrant::VERSION < "1.2.0"
  raise "The Vagrant PackageCache plugin is only compatible with Vagrant 1.2+"
end

module VagrantPlugins
  module PackageCache
    class Plugin < Vagrant.plugin("2")

      name "PackageCache"
      description <<-DESC
        This plugin caches downloaded Linux packages in the host machine, thus making testing of provisionings with Chef, Puppet, etc. faster.
      DESC


      action_hook :do_after_boot, :machine_action_up do |hook|
        require_relative 'action/mount_cache_folder'
        hook.before Vagrant::Action::Builtin::Provision,  VagrantPlugins::PackageCache::Action::MountCacheFolder
      end

    end
  end
end
