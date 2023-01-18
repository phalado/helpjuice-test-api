class SearchInput < ApplicationRecord
  validates_presence_of :input

  searchkick

  def self.fetch_input_count
    SearchInput.search('*', body_options: { aggs: { input: { terms: { field: "input", size: 100 } } } })
               .aggs["input"]["buckets"]
  end
end
