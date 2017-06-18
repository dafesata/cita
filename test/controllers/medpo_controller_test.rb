require 'test_helper'

class MedpoControllerTest < ActionDispatch::IntegrationTest
  test "should get searchmedpo" do
    get medpo_searchmedpo_url
    assert_response :success
  end

end
