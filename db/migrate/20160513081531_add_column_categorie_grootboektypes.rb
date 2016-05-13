class AddColumnCategorieGrootboektypes < ActiveRecord::Migration
  def change
    add_column :grootboektypes, :categorie, :text
  end
end
