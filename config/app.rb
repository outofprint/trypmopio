require 'pathname'

module App
  class << self
    def env
      ENV.fetch('RACK_ENV')
    end

    def root
      Pathname.pwd
    end

    def salt
      ENV.fetch('SALT')
    end
  end
end
