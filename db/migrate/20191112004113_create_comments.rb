class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :party, null: false, foreign_key: true
      t.string :body
      t.integer :likes

      t.timestamps
    end
  end
end
