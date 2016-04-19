class Boeking < ActiveRecord::Base

  belongs_to :grootboekrekening
  belongs_to :boektype
  belongs_to :product

end
