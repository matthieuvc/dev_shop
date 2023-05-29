class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  class User < ApplicationRecord
    ROLES = {
      user: 'User',
      webdev: 'Web Developer'
    }
  end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
