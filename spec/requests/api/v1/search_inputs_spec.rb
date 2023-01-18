require 'rails_helper'

RSpec.describe "Api::V1::SearchInputs", type: :request do
  describe "POST /create" do
    it "returns http success" do
      post api_v1_search_inputs_path, params: { input: "how to" }
      expect(response).to have_http_status(:success)
    end

    it 'increases record count' do
      expect do
        post api_v1_search_inputs_path, params: { input: "how to" }
      end.to change { SearchInput.count }.by(1)
    end
  end

  describe "PUT /update" do
    let!(:search_input) { FactoryBot.create(:search_input) }

    it "returns http success" do
      put api_v1_search_input_path(search_input.id), params: { input: "how to" }
      expect(response).to have_http_status(:success)
    end

    it "updates input" do
      expect do
        put api_v1_search_input_path(search_input.id), params: { input: "how to" }
      end.to change { search_input.reload.input }.from("searching for").to("how to")
    end
  end

  describe "GET /index" do
    let!(:search_input) { FactoryBot.create(:search_input, input: "how to") }
    let!(:search_input2) { FactoryBot.create(:search_input, input: "how to") }
    let!(:search_input3) { FactoryBot.create(:search_input) }
    let(:response_body) { JSON.parse(response.body) }

    before do
      SearchInput.reindex
      get api_v1_search_inputs_path
    end
  
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "returns a count of 2 for 'how to'" do
      how_to_input = response_body["search_inputs"].find { |input| input["key"] == "how to" }
      expect(how_to_input["doc_count"]).to eq(2)
    end

    it "returns a count of 1 for 'searching for'" do
      how_to_input = response_body["search_inputs"].find { |input| input["key"] == "searching for" }
      expect(how_to_input["doc_count"]).to eq(1)
    end
  end
end
