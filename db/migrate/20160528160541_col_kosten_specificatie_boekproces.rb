class ColKostenSpecificatieBoekproces < ActiveRecord::Migration
  def change
  	add_column :boekprocessen, :kostenspecificatie, :string 
  end
end
