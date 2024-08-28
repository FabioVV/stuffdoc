class User < ApplicationRecord

  has_one_attached :profile_image

  devise :database_authenticatable, :registerable, :confirmable, :validatable,
         :recoverable, :rememberable, :timeoutable, :lockable, :trackable, :omniauthable

end