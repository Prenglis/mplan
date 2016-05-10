require 'test_helper'

class MassesControllerTest < ActionController::TestCase
  setup do
    @mass = masses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:masses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mass" do
    assert_difference('Mass.count') do
      post :create, mass: { church_id: @mass.church_id, end: @mass.end, start: @mass.start }
    end

    assert_redirected_to mass_path(assigns(:mass))
  end

  test "should show mass" do
    get :show, id: @mass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mass
    assert_response :success
  end

  test "should update mass" do
    patch :update, id: @mass, mass: { church_id: @mass.church_id, end: @mass.end, start: @mass.start }
    assert_redirected_to mass_path(assigns(:mass))
  end

  test "should destroy mass" do
    assert_difference('Mass.count', -1) do
      delete :destroy, id: @mass
    end

    assert_redirected_to masses_path
  end
end
