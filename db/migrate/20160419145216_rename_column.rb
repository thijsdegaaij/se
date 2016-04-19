class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :grootboekrekeningen, :gbr_categorie_id, :grootboektype_id
  end
end
