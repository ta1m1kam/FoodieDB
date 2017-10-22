class User < ApplicationRecord
  has_secure_password
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}

include Gravtastic
 gravtastic

 def posts
   return Post.where(user_id: self.id)
 end
end
