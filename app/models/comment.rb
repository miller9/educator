class Comment < ApplicationRecord
  belongs_to :educator

  #Polymorphic Comments
  belongs_to :commentable, polymorphic: true
	has_many :comments, as: :commentable, dependent: :destroy


end
