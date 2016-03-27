require 'test_helper'

class TripGoodControllerTest < ActionController::TestCase
  def setup
    @trip_good = TripGood.new(beginning_date: "12/12/212", end_date: "12/12/1994")
  end

  test "should be valid" do
    assert @trip_good.valid?
  end
  
  test "name should be present" do
    @trip_good.end_date = "     "
    assert_not @trip_good.valid?
  end
end