class CreatePortfolioItems < ActiveRecord::Migration
  def change
    create_table :portfolio_items do |t|
      t.string :image
      t.string :caption
      t.text :description
      t.boolean :active
      t.integer :order

      t.timestamps null: false
    end
  end
end
