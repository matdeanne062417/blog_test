require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get category_tasks_url(@task)
    assert_response :success
  end

  test "should get new" do
    get new_category_task_url(@task)
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post category_tasks_url(@task), params: { task: { name: "sample", details: "this is a sample", deadline: "", started_at: "", completed_at: "", started: "", completed: "", category_id: ""} }
    end

    assert_redirected_to category_tasks_url
  end

  test "should show task" do
    get category_tasks_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_task_url(@task, @task.id)
    assert_response :success
  end

  test "should update task" do
    patch category_task_url(@task, @task.id), params: { task: { name: "sample", details: "this is a sample", deadline: "", started_at: "", completed_at: "", started: "", completed: "", category_id: ""} }
    assert_redirected_to category_tasks_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete category_task_url(@task, @task.id)
    end

    assert_redirected_to category_tasks_url
  end

end
