class Card < ApplicationRecord
  belongs_to :list
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
