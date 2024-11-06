class Kitten < ApplicationRecord
  validates :name, presence: true, length: { maximum: 25 }
  validates :age, presence: true
  validates :cuteness, presence: true
  validates :softness, presence: true
end
