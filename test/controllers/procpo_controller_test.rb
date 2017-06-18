require 'test_helper'

class ProcpoControllerTest < ActionDispatch::IntegrationTest
  test "should get searchprocpo" do
    get procpo_searchprocpo_url
    assert_response :success
  end

end
