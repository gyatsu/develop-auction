class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :details
      t.integer :price
      t.integer :seller_id
      t.string :mail
      t.string :image_url

      t.timestamps null: false
    end
  end
end
