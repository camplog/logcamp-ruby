require "logcamp"
require "test/unit"
require "shoulda"

class Test::Unit::TestCase

  setup do
    Logcamp.token = "111"
  end

  teardown do
    Logcamp.token = nil
  end
end
