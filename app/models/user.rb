class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :prototypes
  has_many :comments
  
  with_options presence: true do
    validates :user_name
    validates :profile
    validates :occupation
    validates :option
  end
end
