class Post < ApplicationRecord
  # Validation
  validates :title, presence: true
  validates :body, presence: true

  # ActiveStorage
　has_one_attached :image
end
