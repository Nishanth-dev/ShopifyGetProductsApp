require 'test_helper'

class CustomWebhooksControllerTest < ActionDispatch::IntegrationTest
  test "should get carts_update" do
    get custom_webhooks_carts_update_url
    assert_response :success
  end

end
