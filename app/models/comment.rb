class Comment < ApplicationRecord
  belongs_to :album

  validates :name, presence: true
  validates :name, length: { minimum: 2 }
  validates :text, presence: true
  validates :text, length: { minimum: 3 }
end
