class Product < ActiveRecord::Base
  
  has_many :boekingen
  
  mount_uploader :icoon, ImageUploader
  
end
