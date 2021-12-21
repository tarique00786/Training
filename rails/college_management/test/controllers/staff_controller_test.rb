require "test_helper"

class StaffControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staff_index_url
    assert_response :success
  end

  test "should get delete" do
    get staff_delete_url
    assert_response :success
  end
end
