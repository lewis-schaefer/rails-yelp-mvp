class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5],
    message: "must be a value between 0-5" }
end
