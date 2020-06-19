class Article < ApplicationRecord
  has_rich_text :content
  belongs_to :educator
  has_many :has_types
end
