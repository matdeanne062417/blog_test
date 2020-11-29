require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "name is required" do
    task = Task.new
    assert_not task.save
  end

  test "description is required" do
    task = Task.create(name: "Example")
    assert_not task.save
  end

 
  test "name should be unique" do
    task = Task.create(name: "Example")
    duplicate_task = task.dup 
    assert_not duplicate_task.valid?
  end

  test "task should be saved all parameters" do
    task = Task.create(name: "sample", details: "this is a sample", deadline: "", started_at: "", completed_at: "", started: "", completed: "", category_id: "")
    assert task.save
  end
end
