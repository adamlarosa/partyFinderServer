class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties do |t|
      t.string :title
      t.text :description
      t.string :venue
      t.datetime :date
      t.string :image_url
      t.integer :likes

      t.timestamps
    end
  end
end
