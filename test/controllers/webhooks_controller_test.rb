require 'test_helper'

class WebhooksControllerTest < ActionDispatch::IntegrationTest
  test "should get carts_update" do
    get webhooks_carts_update_url
    assert_response :success
  end

end
