class Boeking < ActiveRecord::Base

  belongs_to :organisatie
  belongs_to :grootboekrekening
  belongs_to :product
  belongs_to :journaal
  belongs_to :boekproces
  
  mount_uploader :icoon, ImageUploader

  # Validate presence of Associated objects
    validates :organisatie, presence: true
    validates :grootboekrekening, presence: true
    validates :journaal, presence: true
  
  # Validate presence of attributes
    validates :organisatie_id, presence: true
    validates :grootboekrekening_id, presence: true
    validates :journaal_id, presence: true
  
  # Validate content of attributes
    validates :waarde, numericality: { only_integer: true,
      message: "%{value} is not valid, must be an integer" }
    validates :bij_af, inclusion: { in: %w(- +), 
      message: "%{value} is not - or +" }
    
end
