class AddColumnOrganisationIdToBoekingen < ActiveRecord::Migration
  def change
    add_column :boekingen, :organisation_id, :integer
  end
end
