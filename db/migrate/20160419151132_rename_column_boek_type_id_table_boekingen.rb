class RenameColumnBoekTypeIdTableBoekingen < ActiveRecord::Migration

  def change
    rename_column :boekingen, :boek_type_id, :boektype_id
  end

end
