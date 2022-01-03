require "test_helper"

class GuestDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guest_detail = guest_details(:one)
  end

  test "should get index" do
    get guest_details_url, as: :json
    assert_response :success
  end

  test "should create guest_detail" do
    assert_difference('GuestDetail.count') do
      post guest_details_url, params: { guest_detail: { email: @guest_detail.email, firstName: @guest_detail.firstName, lastName: @guest_detail.lastName, plusone: @guest_detail.plusone } }, as: :json
    end

    assert_response 201
  end

  test "should show guest_detail" do
    get guest_detail_url(@guest_detail), as: :json
    assert_response :success
  end

  test "should update guest_detail" do
    patch guest_detail_url(@guest_detail), params: { guest_detail: { email: @guest_detail.email, firstName: @guest_detail.firstName, lastName: @guest_detail.lastName, plusone: @guest_detail.plusone } }, as: :json
    assert_response 200
  end

  test "should destroy guest_detail" do
    assert_difference('GuestDetail.count', -1) do
      delete guest_detail_url(@guest_detail), as: :json
    end

    assert_response 204
  end
end
