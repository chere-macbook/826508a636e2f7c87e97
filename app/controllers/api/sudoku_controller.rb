class Api::SudokuController < ApplicationController
  def create
    @puzzle = SudokuPuzzle.new(params[:data])
    @puzzle.solution

    render json: { solution: @puzzle.board }.to_json
  end
end
