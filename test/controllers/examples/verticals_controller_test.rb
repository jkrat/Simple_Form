require 'test_helper'

class Examples::VerticalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get examples_verticals_new_url
    assert_response :success
  end

  test "should get create" do
    get examples_verticals_create_url
    assert_response :success
  end

end
