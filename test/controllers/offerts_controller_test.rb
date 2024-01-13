require "test_helper"

class OffertsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get offerts_index_url
    assert_response :success
  end
end
