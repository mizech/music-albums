class Album < ApplicationRecord
  belongs_to :artist
  has_many :comments, dependent: :delete_all
end
