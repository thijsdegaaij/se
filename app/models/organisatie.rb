class Organisatie < ActiveRecord::Base
  
  belongs_to :bedrijfstak
  belongs_to :rechtsvorm
  has_many :grootboekrekeningen
  has_many :journaals
  has_many :boekingen
  
  mount_uploader :voorkant_image, ImageUploader
  
end
