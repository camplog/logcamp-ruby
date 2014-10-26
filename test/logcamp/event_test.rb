require File.expand_path("../../test_helper", __FILE__)

module Logcamp
  class EventTest < Test::Unit::TestCase
    should "create should return status 201" do
      response = Logcamp::Event.create(status: 'success', message: 'Event occured',
                                       alert: true,
                                       metadata: { date: Time.now })
      assert_equal "201", response.code
    end

    should "raise Logcamp::AuthenticationError if no token provided" do
      Logcamp.token = nil
      assert_raises(Logcamp::AuthenticationError) { Logcamp::Event.create }
    end

    should "raise Logcamp::InvalidRequestError if not enough parameters" do
      begin
      rescue JSON::ParserError
        assert_raises(Logcamp::InvalidRequestError) { Logcamp::Event.create }
      end
    end
  end
end
