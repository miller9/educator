class Article < ApplicationRecord
  has_rich_text :content
  belongs_to :educator
  has_many :has_types
  has_many :types, through: :has_types
  attr_accessor :type_elements

  def save_types
    type_elements.each do |type_id|
      HasType.find_or_create_by(article: self, type_id: type_id)
    end
  end

end
