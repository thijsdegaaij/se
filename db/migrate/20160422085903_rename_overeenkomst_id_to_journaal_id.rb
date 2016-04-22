class RenameOvereenkomstIdToJournaalId < ActiveRecord::Migration
  def change
    rename_column :boekingen, :overeenkomst_id, :journaal_id
  end
end
