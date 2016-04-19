class Organisatie < ActiveRecord::Base
  
  belongs_to :bedrijfstak
  belongs_to :rechtsvorm
  has_many :grootboekrekeningen
  
  mount_uploader :voorkant_image, ImageUploader
  
end
