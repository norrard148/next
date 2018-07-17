require 'test_helper'

class MemberLoungesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_lounge = member_lounges(:one)
  end

  test "should get index" do
    get member_lounges_url
    assert_response :success
  end

  test "should get new" do
    get new_member_lounge_url
    assert_response :success
  end

  test "should create member_lounge" do
    assert_difference('MemberLounge.count') do
      post member_lounges_url, params: { member_lounge: {  } }
    end

    assert_redirected_to member_lounge_url(MemberLounge.last)
  end

  test "should show member_lounge" do
    get member_lounge_url(@member_lounge)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_lounge_url(@member_lounge)
    assert_response :success
  end

  test "should update member_lounge" do
    patch member_lounge_url(@member_lounge), params: { member_lounge: {  } }
    assert_redirected_to member_lounge_url(@member_lounge)
  end

  test "should destroy member_lounge" do
    assert_difference('MemberLounge.count', -1) do
      delete member_lounge_url(@member_lounge)
    end

    assert_redirected_to member_lounges_url
  end
end
