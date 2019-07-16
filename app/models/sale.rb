class Sale < ApplicationRecord
  validates :detail, presence: true
  validates :category, inclusion: { in: %w(uno dos tres cuatro cinco),
    message: "%{value} is not a valid size" }
  validates :value, numericality: true
  validates :discount, numericality: true
  validates :cod, uniqueness: true
end
