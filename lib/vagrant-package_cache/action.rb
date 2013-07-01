require "pathname"

require "vagrant/action/builder"

module VagrantPlugins
  module PackageCache
    module Action
      # Include the built-in modules so we can use them as top-level things.
      include Vagrant::Action::Builtin

      # The autoload farm
      action_root = Pathname.new(File.expand_path("../action", __FILE__))
      #autoload :Connect, action_root.join("connect_aws")
    end
  end
end
