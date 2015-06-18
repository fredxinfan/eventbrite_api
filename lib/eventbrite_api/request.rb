class EventbriteAPI
  class Request
    include HTTParty
    base_uri Configuration.end_point

    attr_accessor :path, :query

    def initialize(path = "", query = {})
      @path = path
      @query = query
    end

    def method_missing(method, *args)
      if [:get, :post, :delete].include?(method.to_sym)
        response = self.class.send(method, path, {query: query}).body
        Response.new(response)
      else
        params = args[0].is_a?(Hash) ? args[0] : {}
        route, token = path.split("?")
        id = params.delete(:id)
        route += "/#{method}/#{id}?#{token}"
        Request.new(route, params)
      end
    end
  end
end
