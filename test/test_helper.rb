require 'logcamp'
require 'test/unit'
require 'minitest/autorun'
require 'minitest/pride'
require 'shoulda'

class Setup
  def setup
    Logcamp.token = "111"
  end

  def teardown
    Logcamp.token = nil
  end
end
