require 'test_helper'

class ScheduleFitnessesControllerTest < ActionController::TestCase
  setup do
    @schedule_fitness = schedule_fitnesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedule_fitnesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule_fitness" do
    assert_difference('ScheduleFitness.count') do
      post :create, schedule_fitness: { fitness: @schedule_fitness.fitness, schedule_candidate_id: @schedule_fitness.schedule_candidate_id, schedule_header_id: @schedule_fitness.schedule_header_id }
    end

    assert_redirected_to schedule_fitness_path(assigns(:schedule_fitness))
  end

  test "should show schedule_fitness" do
    get :show, id: @schedule_fitness
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule_fitness
    assert_response :success
  end

  test "should update schedule_fitness" do
    patch :update, id: @schedule_fitness, schedule_fitness: { fitness: @schedule_fitness.fitness, schedule_candidate_id: @schedule_fitness.schedule_candidate_id, schedule_header_id: @schedule_fitness.schedule_header_id }
    assert_redirected_to schedule_fitness_path(assigns(:schedule_fitness))
  end

  test "should destroy schedule_fitness" do
    assert_difference('ScheduleFitness.count', -1) do
      delete :destroy, id: @schedule_fitness
    end

    assert_redirected_to schedule_fitnesses_path
  end
end
