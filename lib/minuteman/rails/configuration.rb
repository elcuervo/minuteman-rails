class Minuteman
  class Rails
    class Configuration
      attr_accessor :silent, :redis

      def to_hash
        {
          silent: silent || false,
          redis:  redis || {}
        }
      end
    end
  end
end
