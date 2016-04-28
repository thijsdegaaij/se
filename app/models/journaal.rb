class Journaal < ActiveRecord::Base
  
  belongs_to :journaaltype
  belongs_to :organisatie
  has_many :boekingen
  
end
