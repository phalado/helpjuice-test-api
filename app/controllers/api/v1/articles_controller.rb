class Api::V1::ArticlesController < ApplicationController
  def index
    result = Article.fetch(params[:name])
    render json: { results: result.map(&:name) }, status: :ok
  end
end
