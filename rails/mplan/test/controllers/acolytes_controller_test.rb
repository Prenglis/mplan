require 'test_helper'

class AcolytesControllerTest < ActionController::TestCase
  setup do
    @acolyte = acolytes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acolytes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acolyte" do
    assert_difference('Acolyte.count') do
      post :create, acolyte: { church_id: @acolyte.church_id, firstname: @acolyte.firstname, lastname: @acolyte.lastname, since: @acolyte.since }
    end

    assert_redirected_to acolyte_path(assigns(:acolyte))
  end

  test "should show acolyte" do
    get :show, id: @acolyte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acolyte
    assert_response :success
  end

  test "should update acolyte" do
    patch :update, id: @acolyte, acolyte: { church_id: @acolyte.church_id, firstname: @acolyte.firstname, lastname: @acolyte.lastname, since: @acolyte.since }
    assert_redirected_to acolyte_path(assigns(:acolyte))
  end

  test "should destroy acolyte" do
    assert_difference('Acolyte.count', -1) do
      delete :destroy, id: @acolyte
    end

    assert_redirected_to acolytes_path
  end
end
