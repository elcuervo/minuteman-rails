require "minuteman"
require "minuteman/rails/configuration"
require "minuteman/rails/engine"

class Minuteman
  class Rails
    cattr_accessor :configuration, :analytics

    def self.configure
      self.configuration ||= Configuration.new

      yield(self.configuration)
    end
  end
end

Minuteman::Rails.configure {}
Minuteman::Rails.analytics = Minuteman.new(Minuteman::Rails.configuration.to_hash)
