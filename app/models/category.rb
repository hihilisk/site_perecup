class Category < ApplicationRecord
  has_many :adverts, dependent: :destroy
  validates :model, :brand, presence: true, length: { minimum: 3 }
  validates :model, uniqueness: true

  def brand_model
    "#{brand} #{model}"
  end
end
