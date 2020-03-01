class Category < ApplicationRecord
  has_many :nomination, dependent: :destroy
end
