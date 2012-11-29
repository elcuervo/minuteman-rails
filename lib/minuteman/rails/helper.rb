require "forwardable"

class Minuteman
  class Rails
    module Helper
      extend Forwardable

      def_delegators :"Minuteman::Rails", :analytics
      def_delegators :analytics, :track, :events
    end
  end
end
