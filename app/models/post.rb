class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 140}}
  validates :food_name, {presence: true, length: {maximum: 20}}
  validates :picture, {presence: true}
  mount_uploader :picture, PictureUploader
  # validates :uesr_id, {presence: true}

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def user
    return User.find_by(id: self.user_id)
  end
end
