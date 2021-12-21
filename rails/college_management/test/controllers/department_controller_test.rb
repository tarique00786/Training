require "test_helper"

class DepartmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get department_index_url
    assert_response :success
  end

  test "should get delete" do
    get department_delete_url
    assert_response :success
  end
end
