require 'test_helper'

class Api::SudokuControllerTest < ActionDispatch::IntegrationTest
  test 'should get create' do
    let(:data) do
      {
        data:
          [
            [2, 0, 5, 0, 0, 9, 0, 0, 4],
            [0, 0, 0, 0, 0, 0, 3, 0, 7],
            [7, 0, 0, 8, 5, 6, 0, 1, 0],
            [4, 5, 0, 7, 0, 0, 0, 0, 0],
            [0, 0, 9, 0, 0, 0, 1, 0, 0],
            [0, 0, 0, 0, 0, 2, 0, 8, 5],
            [0, 2, 0, 4, 1, 8, 0, 0, 6],
            [6, 0, 8, 0, 0, 0, 0, 0, 0],
            [1, 0, 0, 2, 0, 0, 7, 0, 8]
          ]
      }
    end
    post api_sudoku_create_url, params: data
    assert_response :success
  end
end
