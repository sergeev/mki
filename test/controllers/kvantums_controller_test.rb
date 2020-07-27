require 'test_helper'

class KvantumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kvantums_index_url
    assert_response :success
  end

end
