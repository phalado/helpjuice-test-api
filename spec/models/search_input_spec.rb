require 'rails_helper'

RSpec.describe SearchInput, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :input }
  end
end
