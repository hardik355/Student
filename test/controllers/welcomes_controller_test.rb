require 'test_helper'

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get welcomes_Index_url
    assert_response :success
  end

  test "should get New" do
    get welcomes_New_url
    assert_response :success
  end

  test "should get Update" do
    get welcomes_Update_url
    assert_response :success
  end

  test "should get Show" do
    get welcomes_Show_url
    assert_response :success
  end

end
