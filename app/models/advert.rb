class Advert < ApplicationRecord
  belongs_to :category

  has_one :check_list, dependent: :destroy

  validates :url, uniqueness: {case_sensitive: false}
end
