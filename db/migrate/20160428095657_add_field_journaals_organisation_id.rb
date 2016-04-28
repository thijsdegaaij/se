class AddFieldJournaalsOrganisationId < ActiveRecord::Migration
  def change
    add_column :journaals, :organisatie_id, :integer
  end
end
