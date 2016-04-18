class AddVoorkantImageToOrganisaties < ActiveRecord::Migration
  def change
    add_column :organisaties, :voorkant_image, :string
  end
end
