class Boektype < ActiveRecord::Base
  
  has_many :boekingen
  
end
