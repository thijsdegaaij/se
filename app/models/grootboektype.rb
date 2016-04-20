class Grootboektype < ActiveRecord::Base
  
  has_many :grootboekrekeningen
  
  mount_uploader :icoon, ImageUploader
  
end
