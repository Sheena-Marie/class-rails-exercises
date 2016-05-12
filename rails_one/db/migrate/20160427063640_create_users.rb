class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password, default: 'password'
      t.integer :age
      t.date :dob

      t.timestamps null: false
    end
  end
end
