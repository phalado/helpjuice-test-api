require 'rails_helper'

RSpec.describe "Api::V1::Articles", type: :request do
  describe "GET /index" do
    let!(:article1) { FactoryBot.create(:article, name: "Easy trick to getting a Top Writer award") }
    let!(:article2) { FactoryBot.create(:article, name: "Be a mimic in your writing for a massive productivity boost") }
    let!(:article3) { FactoryBot.create(:article, name: "Easy trick lorem ipsum") }

    context 'without any params' do
      let(:response_body) { JSON.parse(response.body) }

      before(:each) do
        Article.reindex
        get api_v1_articles_index_path
      end
  
      it { expect(response).to have_http_status(:success) }
  
      it 'returns no result withou any params' do
        expect(response_body['results']).to be_empty
      end
    end

    context 'with \'be a mimic\' as name param' do
      let(:response_body) { JSON.parse(response.body) }

      before(:each) do
        Article.reindex
        get api_v1_articles_index_path, params: { name: 'be a mimic' }
      end

      it { expect(response).to have_http_status(:success) }

      it 'returns article2 ' do
        expect(response_body['results'].include?(article2.name)).to be_truthy
      end

      it 'does not return article1 ' do
        expect(response_body['results'].include?(article1.name)).to be_falsy
      end

      it 'does not return article3 ' do
        expect(response_body['results'].include?(article3.name)).to be_falsy
      end
    end

    context 'with \'easy trick\' as name param' do
      let(:response_body) { JSON.parse(response.body) }

      before(:each) do
        Article.reindex
        get api_v1_articles_index_path, params: { name: 'easy trick' }
      end

      it { expect(response).to have_http_status(:success) }

      it 'does not returns article2 ' do
        expect(response_body['results'].include?(article2.name)).to be_falsy
      end

      it 'returns article1 ' do
        expect(response_body['results'].include?(article1.name)).to be_truthy
      end

      it 'returns article3 ' do
        expect(response_body['results'].include?(article3.name)).to be_truthy
      end
    end
  end
end
