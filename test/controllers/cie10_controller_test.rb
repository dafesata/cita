require 'test_helper'

class Cie10ControllerTest < ActionDispatch::IntegrationTest
  test "should get searchcie10" do
    get cie10_searchcie10_url
    assert_response :success
  end

end
