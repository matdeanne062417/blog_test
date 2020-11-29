require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { name: "sample", details: "this is a sample", deadline: "", started_at: "", completed_at: "", started: "", completed: "", category_id: ""} }
    end

    assert_redirected_to tasks_url(Task.last)
  end

  test "should show task" do
    get tasks_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch update_task_url(@task), params: { task: { name: "sample", details: "this is a sample", deadline: "", started_at: "", completed_at: "", started: "", completed: "", category_id: ""} }
    assert_redirected_to tasks_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete delete_task_url(@task)
    end

    assert_redirected_to tasks_url
  end

end
