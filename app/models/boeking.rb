class Boeking < ActiveRecord::Base

  belongs_to :grootboekrekening
  belongs_to :product
  belongs_to :journaal
  
  mount_uploader :icoon, ImageUploader

end
