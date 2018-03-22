class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  validates :username, presence: true, uniqueness: true
  validates :firstname, presence: true
  validates_length_of :firstname, maximum: 30
  validates_length_of :username, maximum: 30
  validates_length_of :lastname, maximum: 30, message: "less than 30 if you don't mind"
  validates :lastname, presence: true
  validates_inclusion_of :age, presence: true, in: 18..80, message: 'This site is only for over 18 and under 80'
  validates :sex, presence: true
  validates :occupation, presence: true
  validates :preference, presence: true
  validates :avatar, presence: true
  validates :about, presence: true, length: { minimum:20 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
