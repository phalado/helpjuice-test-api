class SearchInput < ApplicationRecord
  validates_presence_of :input

  searchkick

  def self.fetch
    SearchInput.search("*", aggs: {column_name: {terms: {field: "input", order: {_count: :desc}}}})
               .aggs["input"]["buckets"]
  end
end
