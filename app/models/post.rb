class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 140}}
  validates :uesr_id, {presence: true}
end
