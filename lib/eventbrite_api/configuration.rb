class EventbriteAPI
  class Configuration
    class << self
      attr_accessor :access_token

      def end_point
        "https://www.eventbriteapi.com/v3"
      end
    end
  end
end