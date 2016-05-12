class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :client, index: true, foreign_key: true
      t.text :hobbies
      t.string :profile_pic

      t.timestamps null: false
    end
  end
end
