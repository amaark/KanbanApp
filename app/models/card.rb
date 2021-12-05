class Card < ApplicationRecord
  belongs_to :column
  validates card_title, presence: true
end
