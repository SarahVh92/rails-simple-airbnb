class Flat < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { in: 6..20 }
end
