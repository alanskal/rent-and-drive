class Car < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :brand, presence: true
  validates :model, presence: true
  validates :adress, presence: true
  validates :photo, presence: true
  validates :price_per_day, numericality: { greater_than: 0 }

end
