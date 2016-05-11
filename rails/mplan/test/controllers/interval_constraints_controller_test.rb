require 'test_helper'

class IntervalConstraintsControllerTest < ActionController::TestCase
  setup do
    @interval_constraint = interval_constraints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interval_constraints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interval_constraint" do
    assert_difference('IntervalConstraint.count') do
      post :create, interval_constraint: { constraint_id: @interval_constraint.constraint_id, constraint_type: @interval_constraint.constraint_type, from: @interval_constraint.from, to: @interval_constraint.to }
    end

    assert_redirected_to interval_constraint_path(assigns(:interval_constraint))
  end

  test "should show interval_constraint" do
    get :show, id: @interval_constraint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interval_constraint
    assert_response :success
  end

  test "should update interval_constraint" do
    patch :update, id: @interval_constraint, interval_constraint: { constraint_id: @interval_constraint.constraint_id, constraint_type: @interval_constraint.constraint_type, from: @interval_constraint.from, to: @interval_constraint.to }
    assert_redirected_to interval_constraint_path(assigns(:interval_constraint))
  end

  test "should destroy interval_constraint" do
    assert_difference('IntervalConstraint.count', -1) do
      delete :destroy, id: @interval_constraint
    end

    assert_redirected_to interval_constraints_path
  end
end
