class Type < ApplicationRecord
  has_many :has_types
  has_many :articles, through: :has_types
end
