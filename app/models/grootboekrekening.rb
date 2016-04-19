class Grootboekrekening < ActiveRecord::Base
  
  belongs_to :grootboektype
  belongs_to :organisatie
  has_many :boekingen
  
end
