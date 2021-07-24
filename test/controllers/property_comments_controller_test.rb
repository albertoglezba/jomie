require 'test_helper'

class PropertyCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_comment = property_comments(:one)
  end

  test "should get index" do
    get property_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_property_comment_url
    assert_response :success
  end

  test "should create property_comment" do
    assert_difference('PropertyComment.count') do
      post property_comments_url, params: { property_comment: { comment: @property_comment.comment, property_id: @property_comment.property_id } }
    end

    assert_redirected_to property_comment_url(PropertyComment.last)
  end

  test "should show property_comment" do
    get property_comment_url(@property_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_comment_url(@property_comment)
    assert_response :success
  end

  test "should update property_comment" do
    patch property_comment_url(@property_comment), params: { property_comment: { comment: @property_comment.comment, property_id: @property_comment.property_id } }
    assert_redirected_to property_comment_url(@property_comment)
  end

  test "should destroy property_comment" do
    assert_difference('PropertyComment.count', -1) do
      delete property_comment_url(@property_comment)
    end

    assert_redirected_to property_comments_url
  end
end
