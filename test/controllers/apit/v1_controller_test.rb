require "test_helper"

class Apit::V1ControllerTest < ActionDispatch::IntegrationTest
  test "should get messages" do
    get apit_v1_messages_url
    assert_response :success
  end

  test "should get index" do
    get apit_v1_index_url
    assert_response :success
  end

  test "should get create" do
    get apit_v1_create_url
    assert_response :success
  end
end
