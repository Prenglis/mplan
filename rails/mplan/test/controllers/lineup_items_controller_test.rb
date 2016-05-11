require 'test_helper'

class LineupItemsControllerTest < ActionController::TestCase
  setup do
    @lineup_item = lineup_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lineup_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lineup_item" do
    assert_difference('LineupItem.count') do
      post :create, lineup_item: { acolyte_id: @lineup_item.acolyte_id, position_id: @lineup_item.position_id }
    end

    assert_redirected_to lineup_item_path(assigns(:lineup_item))
  end

  test "should show lineup_item" do
    get :show, id: @lineup_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lineup_item
    assert_response :success
  end

  test "should update lineup_item" do
    patch :update, id: @lineup_item, lineup_item: { acolyte_id: @lineup_item.acolyte_id, position_id: @lineup_item.position_id }
    assert_redirected_to lineup_item_path(assigns(:lineup_item))
  end

  test "should destroy lineup_item" do
    assert_difference('LineupItem.count', -1) do
      delete :destroy, id: @lineup_item
    end

    assert_redirected_to lineup_items_path
  end
end
