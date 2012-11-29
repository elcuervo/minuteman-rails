require "rails"
require "minuteman/rails/helper"

class Minuteman
  class Rails
    class Engine < ::Rails::Engine
      initializer "minuteman-rails" do |app|
        ActionController::Base.send :include, Minuteman::Rails::Helper
        ActionController::Base.helper Minuteman::Rails::Helper
      end
    end
  end
end
