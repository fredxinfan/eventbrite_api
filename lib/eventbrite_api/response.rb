class EventbriteAPI
  class Response
    attr_accessor :body

    def initialize(json)
      @body = JSON.parse(json)
    end
  end
end