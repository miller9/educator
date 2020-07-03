class Comment < ApplicationRecord
  belongs_to :article
  #validates :commenter, presence: true
  #validates :body, presence: true
  belongs_to :educator
end
