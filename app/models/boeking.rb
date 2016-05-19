class Boeking < ActiveRecord::Base

  belongs_to :grootboekrekening
  belongs_to :product
  belongs_to :journaal
  belongs_to :organisatie
  belongs_to :boekproces
  
  mount_uploader :icoon, ImageUploader

end
