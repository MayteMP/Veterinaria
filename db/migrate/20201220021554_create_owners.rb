class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :last_name
      t.string :last_name_two
      t.string :street_name
      t.string :external_number
      t.string :internal_number
      t.string :town
      t.string :city
      t.string :country, default: "México"
      t.string :phone_number

      t.timestamps
    end
  end
end
