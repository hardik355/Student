require 'test_helper'

class RegistersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registers_index_url
    assert_response :success
  end

  test "should get new" do
    get registers_new_url
    assert_response :success
  end

  test "should get update" do
    get registers_update_url
    assert_response :success
  end

  test "should get show" do
    get registers_show_url
    assert_response :success
  end

end
