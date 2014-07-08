Gem::Specification.new do |s|
  s.name = "eventbrite_api"
  s.authors = ["Xin Fan (Fred)"]
  s.version = "0.0.2"
  s.email = "fredxinfan@gmail.com"
  s.summary = "A simple API wrapper for Eventbrite V3."
  s.files = [
              "ReadMe.md",
              "eventbrite_api.gemspec", 
              "lib/eventbrite_api.rb", 
              "lib/eventbrite_api/configuration.rb", 
              "lib/eventbrite_api/request.rb",
              "lib/eventbrite_api/response.rb"
            ]
  
  s.add_dependency("httparty",[">= 0"])
  s.add_dependency("json",[">= 0"])
end