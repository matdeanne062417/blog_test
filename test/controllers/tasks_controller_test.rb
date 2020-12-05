require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  setup do
    @task = tasks(:default)
    @category = categories(:two)
  end

  test "should get index" do
    get category_tasks_url(@category, @task)
    assert_response :success
  end

  test "should get new" do
    get new_category_task_url(@category, @task)
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count', 1) do
      post category_tasks_url(@category, @task), params: { task: { name: "sample", details: "this is a sample", deadline: "", started_at: "", completed_at: "", started: "", completed: "", category_id: ""} }
    end

    assert_redirected_to category_tasks_url
  end

  test "should show task" do
    get category_tasks_url(@category, @task)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_task_url(@task.category_id, @task.id)
    assert_response :success
  end

  test "should update task" do
    patch category_task_url(@task.category_id, @task.id), params: { task: { name: "sample", details: "this is a sample", deadline: "12-12-2020", started_at: "12-07-2020", completed_at: "12-12-2020", started: "12-12-2020", completed: "12-2-2020", category_id: "2"} }
    assert_redirected_to category_tasks_url
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete category_task_url(@task.category_id, @task.id)
    end

    assert_redirected_to category_tasks_url
  end

end
