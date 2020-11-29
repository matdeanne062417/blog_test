require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "name is required" do
    category = Category.new
    assert_not category.save
  end

  test "description is required" do
    category = Category.create(name: "Example")
    assert_not category.save
  end

 
  test "name should be unique" do
    category = Category.create(name: "Example")
    duplicate_category = category.dup 
    assert_not duplicate_category.valid?
  end

  test "category should be saved with name and body" do
    category = Category.create(name: "Mat", description: "sample only")
    assert category.save
  end
end
