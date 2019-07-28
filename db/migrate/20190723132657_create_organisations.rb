class CreateOrganisations < ActiveRecord::Migration[5.2]
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :logo
      t.references :user, foreign_key: true
      t.string :location
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
