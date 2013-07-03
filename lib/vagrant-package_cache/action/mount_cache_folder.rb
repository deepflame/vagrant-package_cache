module VagrantPlugins
  module PackageCache
    module Action
      class MountCacheFolder

        def initialize(app, env)
          @app = app
          @env = env
        end

        def call(env)
          log.info "Adding PackageCache sync folder"
          config.vm.synced_folder host_apt_cache_dir, guest_apt_cache_dir

          @app.call(env)
        end

        private

        def log
          @env[:ui]
        end
        
        def config
          @env[:machine].config
        end

        def guest_apt_cache_dir
          "/var/cache/apt/archives"
        end

        def host_apt_cache_dir
          vagrant_home = File.expand_path @env[:home_path]
          apt_cache_dir = File.join vagrant_home, 'cache', 'apt', config.vm.box
          partial_dir = File.join apt_cache_dir, 'partial'
          FileUtils.mkdir_p partial_dir unless File.exists? partial_dir
          apt_cache_dir
        end

      end
    end
  end
end
