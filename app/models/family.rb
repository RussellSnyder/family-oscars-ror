class Family < ApplicationRecord
  has_one_attached :image, dependent: :destroy
  has_many :awards_ceremony
end
