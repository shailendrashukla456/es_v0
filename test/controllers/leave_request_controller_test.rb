require 'test_helper'

class LeaveRequestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leave_request_index_url
    assert_response :success
  end

  test "should get new" do
    get leave_request_new_url
    assert_response :success
  end

  test "should get create" do
    get leave_request_create_url
    assert_response :success
  end

end
