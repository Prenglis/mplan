require 'test_helper'

class WeekdayConstraintsControllerTest < ActionController::TestCase
  setup do
    @weekday_constraint = weekday_constraints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weekday_constraints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weekday_constraint" do
    assert_difference('WeekdayConstraint.count') do
      post :create, weekday_constraint: { constraint_id: @weekday_constraint.constraint_id, constraint_type: @weekday_constraint.constraint_type, day: @weekday_constraint.day, name: @weekday_constraint.name }
    end

    assert_redirected_to weekday_constraint_path(assigns(:weekday_constraint))
  end

  test "should show weekday_constraint" do
    get :show, id: @weekday_constraint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weekday_constraint
    assert_response :success
  end

  test "should update weekday_constraint" do
    patch :update, id: @weekday_constraint, weekday_constraint: { constraint_id: @weekday_constraint.constraint_id, constraint_type: @weekday_constraint.constraint_type, day: @weekday_constraint.day, name: @weekday_constraint.name }
    assert_redirected_to weekday_constraint_path(assigns(:weekday_constraint))
  end

  test "should destroy weekday_constraint" do
    assert_difference('WeekdayConstraint.count', -1) do
      delete :destroy, id: @weekday_constraint
    end

    assert_redirected_to weekday_constraints_path
  end
end
