require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get new" do
    get new_category_url
    assert_response :success
  end

  test "should get index" do
    get categories_url
    assert_response :success
  end
  
  test "should get show" do
    get show_category_url
    assert_response :success
  end

  test "should get edit" do
    get edit_category_url
    assert_response :success
  end

end
