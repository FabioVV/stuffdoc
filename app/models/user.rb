class User < ApplicationRecord

  devise :database_authenticatable, :registerable, :confirmable, :validatable,
         :recoverable, :rememberable, :timeoutable, :lockable, :trackable, :omniauthable

end