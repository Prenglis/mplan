require 'test_helper'

class ScheduleCandidatesControllerTest < ActionController::TestCase
  setup do
    @schedule_candidate = schedule_candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedule_candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule_candidate" do
    assert_difference('ScheduleCandidate.count') do
      post :create, schedule_candidate: { mass_id: @schedule_candidate.mass_id }
    end

    assert_redirected_to schedule_candidate_path(assigns(:schedule_candidate))
  end

  test "should show schedule_candidate" do
    get :show, id: @schedule_candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule_candidate
    assert_response :success
  end

  test "should update schedule_candidate" do
    patch :update, id: @schedule_candidate, schedule_candidate: { mass_id: @schedule_candidate.mass_id }
    assert_redirected_to schedule_candidate_path(assigns(:schedule_candidate))
  end

  test "should destroy schedule_candidate" do
    assert_difference('ScheduleCandidate.count', -1) do
      delete :destroy, id: @schedule_candidate
    end

    assert_redirected_to schedule_candidates_path
  end
end
