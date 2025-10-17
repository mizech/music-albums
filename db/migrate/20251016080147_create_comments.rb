class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :text
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
