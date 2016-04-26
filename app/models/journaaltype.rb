class Journaaltype < ActiveRecord::Base
  
  has_many :journaals
  
  mount_uploader :icoon, ImageUploader
  
end
