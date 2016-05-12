class CreateShelterCategories < ActiveRecord::Migration
  def change
    create_table :shelter_categories do |t|
      t.references :shelter, index: true, foreign_key: true
      t.references :shelter_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
