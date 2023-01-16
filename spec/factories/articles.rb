FactoryBot.define do
  factory :article do
    name { Faker::Hipster.sentences.sample }
  end
end
