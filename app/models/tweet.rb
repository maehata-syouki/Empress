class Tweet < ApplicationRecord
  belongs_to :user
  # validates :tweets, presence: true, unless: :image?

  mount_uploader :image, ImageUploader
end
