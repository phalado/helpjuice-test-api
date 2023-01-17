require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
  end
end
