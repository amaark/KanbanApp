class Board < ApplicationRecord
  has_many :columns, dependent: :destroy
  has_many :cards, through: :columns
  validates :board_title, presence: true
end
