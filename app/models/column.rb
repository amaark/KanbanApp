class Column < ApplicationRecord
  belongs_to :board
  has_many :cards, dependent: :destroy
  validates :column_title, presence: true
end
