class Organisatie < ActiveRecord::Base
  
  belongs_to :bedrijfstak
  belongs_to :rechtsvorm
  
  mount_uploader :voorkant_image, ImageUploader
  
end
