require 'test_helper'

class LeavetypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leavetypes_index_url
    assert_response :success
  end

  test "should get new" do
    get leavetypes_new_url
    assert_response :success
  end

  test "should get create" do
    get leavetypes_create_url
    assert_response :success
  end

end
