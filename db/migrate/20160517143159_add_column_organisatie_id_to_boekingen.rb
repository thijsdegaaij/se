class AddColumnOrganisatieIdToBoekingen < ActiveRecord::Migration
  def change
    add_column :boekingen, :organisatie_id, :integer
  end
end
