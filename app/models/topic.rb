class Topic < ApplicationRecord
 # Validation
  validates :column, presence: true
  validates :author, presence: true

  # ActiveStorage
  has_one_attached :image
end

