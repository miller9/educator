class HasType < ApplicationRecord
  belongs_to :article
  belongs_to :type
end
