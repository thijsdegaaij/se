class Boeking < ActiveRecord::Base

  belongs_to :grootboekrekening
  belongs_to :boekingtype
  belongs_to :product

end
