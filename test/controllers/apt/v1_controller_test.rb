require "test_helper"

class Apt::V1ControllerTest < ActionDispatch::IntegrationTest
  test "should get messages" do
    get apt_v1_messages_url
    assert_response :success
  end

  test "should get index" do
    get apt_v1_index_url
    assert_response :success
  end

  test "should get create" do
    get apt_v1_create_url
    assert_response :success
  end
end
