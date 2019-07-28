class AddDescriptionToOrganisations < ActiveRecord::Migration[5.2]
  def change
    add_column :organisations, :description, :text
  end
end
