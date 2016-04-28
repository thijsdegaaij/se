class Organisatie < ActiveRecord::Base
  
  belongs_to :bedrijfstak
  belongs_to :rechtsvorm
  has_many :grootboekrekeningen
  has_many :journaals
  
  mount_uploader :voorkant_image, ImageUploader
  
end
