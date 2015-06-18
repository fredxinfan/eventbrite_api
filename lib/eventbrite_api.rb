require "erb"
require "httparty"
require "json"
require "eventbrite_api/configuration"
require "eventbrite_api/response"
require "eventbrite_api/request"

class EventbriteAPI

  def method_missing(method, *args)
    params = args[0].is_a?(Hash) ? args[0] : {}
    raise MissingIdException.new("#{method.capitalize} id can not be empty.") unless params[:id]
    path = "/#{method}/#{params.delete(:id)}?token=#{Configuration.access_token}"
    Request.new(path, params)
  end

  class APIException < ::Exception; end
  class MissingIdException < APIException; end
end