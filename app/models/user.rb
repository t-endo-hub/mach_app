class User < ApplicationRecord
  has_many :reactions
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :img_name, ImgNameUploader
  enum sex: { 男: 0, 女: 1 }

end