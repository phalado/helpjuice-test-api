class Api::V1::SearchInputsController < ApplicationController
  before_action :fetch_search_input, only: :update

  def create
    search_input = SearchInput.create!(input: params[:input])
    render json: { search_input: { id: search_input.id, input: search_input.input } }, status: :ok
  end

  def update
    @search_input.update(input: params[:input])
    render json: { search_input: { id: @search_input.id, input: @search_input.input } }, status: :ok
  end

  def index
    results = SearchInput.fetch_input_count
    render json: { search_inputs: results }, status: :ok
  end

  private

  def fetch_search_input
    @search_input = SearchInput.find_by_id(params[:id])
  end
end
