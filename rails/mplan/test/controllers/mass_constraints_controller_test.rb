require 'test_helper'

class MassConstraintsControllerTest < ActionController::TestCase
  setup do
    @mass_constraint = mass_constraints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mass_constraints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mass_constraint" do
    assert_difference('MassConstraint.count') do
      post :create, mass_constraint: { constraint_id: @mass_constraint.constraint_id, constraint_type: @mass_constraint.constraint_type, mass_id: @mass_constraint.mass_id }
    end

    assert_redirected_to mass_constraint_path(assigns(:mass_constraint))
  end

  test "should show mass_constraint" do
    get :show, id: @mass_constraint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mass_constraint
    assert_response :success
  end

  test "should update mass_constraint" do
    patch :update, id: @mass_constraint, mass_constraint: { constraint_id: @mass_constraint.constraint_id, constraint_type: @mass_constraint.constraint_type, mass_id: @mass_constraint.mass_id }
    assert_redirected_to mass_constraint_path(assigns(:mass_constraint))
  end

  test "should destroy mass_constraint" do
    assert_difference('MassConstraint.count', -1) do
      delete :destroy, id: @mass_constraint
    end

    assert_redirected_to mass_constraints_path
  end
end
