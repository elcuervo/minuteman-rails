require "rails"
require "minuteman/rails/helper"

class Minuteman
  class Rails
    class Engine < ::Rails::Engine
      initializer "minuteman-rails" do |app|
        ActionController::Base.send :include, Minuteman::Helper
        ActionController::Base.helper Minuteman::Helper
      end
    end
  end
end
