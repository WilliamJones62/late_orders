require 'test_helper'

class LateOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get late_orders_dashboard_url
    assert_response :success
  end

end
