class RemoveBeschrijvingToBoekingen < ActiveRecord::Migration
  def change
    remove_column :boekingen, :beschrijving, :string
  end
end
