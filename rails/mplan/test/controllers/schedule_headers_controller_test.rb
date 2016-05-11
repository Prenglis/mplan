require 'test_helper'

class ScheduleHeadersControllerTest < ActionController::TestCase
  setup do
    @schedule_header = schedule_headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedule_headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule_header" do
    assert_difference('ScheduleHeader.count') do
      post :create, schedule_header: { from: @schedule_header.from, to: @schedule_header.to }
    end

    assert_redirected_to schedule_header_path(assigns(:schedule_header))
  end

  test "should show schedule_header" do
    get :show, id: @schedule_header
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule_header
    assert_response :success
  end

  test "should update schedule_header" do
    patch :update, id: @schedule_header, schedule_header: { from: @schedule_header.from, to: @schedule_header.to }
    assert_redirected_to schedule_header_path(assigns(:schedule_header))
  end

  test "should destroy schedule_header" do
    assert_difference('ScheduleHeader.count', -1) do
      delete :destroy, id: @schedule_header
    end

    assert_redirected_to schedule_headers_path
  end
end
