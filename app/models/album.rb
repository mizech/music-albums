class Album < ApplicationRecord
  belongs_to :artist
  has_many :comments, dependent: :delete_all

  validates :name, presence: true
  validates :name, length: { minimum: 2 }
  validates :price, presence: true
  validates :price, numericality: true
end
