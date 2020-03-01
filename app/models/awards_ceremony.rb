class AwardsCeremony < ApplicationRecord
  has_one_attached :image, dependent: :destroy
  # belongs_to :family
  has_many :awards_category
end
