This gem is for Eventbrite V3 API only.

# Get Started

gem install eventbrite-api

For Rails project:

add gem 'eventbrite-api' to your Gemfile.
add ``EventbriteAPI::Configuration.access_token="your-oauth-token"`` in initializers.

## Quick examples

``@eb = EventbriteAPI.new``

### For Event API call:
``@event = @eb.events(id: 123456)``

Get event details: ``@event.get`` 

Get event attendees: ``@event.attendees.get``

For a specific attendee: ``@event.attendees(id: 1234567).get``

Use options: ``@event.attendees(status: "attending").get``

Get event teams: ``@event.teams.get``

Get event team attendees: ``@event.teams(id: 123456).attendees.get``

### For User API call:

When using personal OAuth token:
``@user = @eb.users(id: "me")``

When using a third party OAuth token:
``@user = @eb.users(id: third_party_user_id)``

OAuth token needs to be updated before making an API call on behalf of a third party:
``EventbriteAPI::Configuration.access_token="third-party-user-oauth-token"``

Get user details: ``@user.get``

Get user team attendees: ``@user.owned_event_attendees.get``

### For Order API call:

``@order = @eb.orders(id: 123456)``
``@order.get``

This gem also provides ``.post`` request as well as the ``.get`` above, but the V3 API is still in preview status and doesn't seem to be recognize the arguments in the documentation for POST request.

For more information about V3 API, please visit http://developer.eventbrite.com/docs/.

