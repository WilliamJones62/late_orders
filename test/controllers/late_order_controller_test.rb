require 'test_helper'

class LateOrderControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get late_order_dashboard_url
    assert_response :success
  end

end
