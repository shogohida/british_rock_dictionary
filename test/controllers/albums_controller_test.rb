require 'test_helper'

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get albums_index_url
    assert_response :success
  end

  test "should get new" do
    get albums_new_url
    assert_response :success
  end

  test "should get showedit" do
    get albums_showedit_url
    assert_response :success
  end

end
