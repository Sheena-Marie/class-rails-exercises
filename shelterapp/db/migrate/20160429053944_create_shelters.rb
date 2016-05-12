class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.string :street
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.float :latitude
      t.float :longitude
      t.string :website
      t.string :phone

      t.timestamps null: false
    end
  end
end
