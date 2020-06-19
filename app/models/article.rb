class Article < ApplicationRecord
  has_rich_text :content
  belongs_to :educator
  has_many :has_types
  has_many :types, through: :has_types
end
