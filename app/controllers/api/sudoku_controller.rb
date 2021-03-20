class Api::SudokuController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @puzzle = SudokuPuzzle.new(params[:data])
    @puzzle.solution

    render json: { solution: @puzzle.board }.to_json
  end
end
