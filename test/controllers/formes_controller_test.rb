require 'test_helper'

class FormesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get formes_index_url
    assert_response :success
  end

  test "should get new" do
    get formes_new_url
    assert_response :success
  end

  test "should get create" do
    get formes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get formes_destroy_url
    assert_response :success
  end

end
