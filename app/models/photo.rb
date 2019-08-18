class Photo < ApplicationRecord
  extend Dragonfly::Model
  dragonfly_accessor :image
  belongs_to :album

  validates :image, presence: true
  # validates_size_of :image, maximum: 20000.kilobytes,
  #                 message: "should be no more than 500 KB", if: :image_changed?

  validates_property :format, of: :image, in: [:jpeg, :jpg, :png, :bmp], case_sensitive: false,
                   message: "should be either .jpeg, .jpg, .png, .bmp", if: :image_changed?
  validate :photos_limit, on: :create

  def photos_limit
    errors.add(:image, "User can't add more than 25 photos to an album") if (album.photos.count > 25)
  end

end
