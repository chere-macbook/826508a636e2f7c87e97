require "test_helper"

class Api::SudokuControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_sudoku_create_url
    assert_response :success
  end
end
