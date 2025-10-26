class Comment < ApplicationRecord
  belongs_to :album

  validates :name, length: { minimum: 2 }
  validates :text, length: { minimum: 3 }
end
