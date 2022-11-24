class CreateVehicules < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicules do |t|
      t.string :name
      t.string :type_object
      t.text :description
      t.string :type_of_person
      t.string :vehicule_location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
