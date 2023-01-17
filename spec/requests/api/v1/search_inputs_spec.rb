require 'rails_helper'

RSpec.describe "Api::V1::SearchInputs", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/search_inputs/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/search_inputs/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/search_inputs/index"
      expect(response).to have_http_status(:success)
    end
  end

end
