class ExtraColRechtsvormen < ActiveRecord::Migration
  def change
  	add_column :rechtsvormen, :sector, :string  	
  end
end
