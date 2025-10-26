class Artist < ApplicationRecord
  has_many :albums, dependent: :delete_all

  validates :name, presence: true
  validates :name, length: { minimum: 2 }
end
