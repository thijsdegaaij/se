class Grootboekrekening < ActiveRecord::Base
  
  belongs_to :grootboekrekeningtype
  belongs_to :organisatie
  has_many :boekingen
  
end
