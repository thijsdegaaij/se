class RemoveColumnOrganisationIdToBoekingen < ActiveRecord::Migration
  def change
    remove_column :boekingen, :organisation_id
  end
end
