require "forwardable"

class Minuteman
  class Rails
    module Helper
      extend Forwardable

      def_delegators :"Minuteman::Rails.analytics", :track, :events
      def_delegators :"Minuteman::Rails", :analytics
    end
  end
end
