class Journaal < ActiveRecord::Base
  
  belongs_to :journaaltype
  has_many :boekingen
  
end
