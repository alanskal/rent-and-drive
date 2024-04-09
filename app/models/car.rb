class Car < ApplicationRecord
  belongs_to :user

  validates :content, presence: true
  validates :model, presence: true
  validates :adress, presence: true
  validates :price_per_day, numericality: { greater_than: 0 }

end
