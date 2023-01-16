class Article < ApplicationRecord
  validates_presence_of :name

  searchkick word_middle: [:name]

  def self.fetch(name)
    Article.search name
  end
end
