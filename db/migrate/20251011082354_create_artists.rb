class CreateArtists < ActiveRecord::Migration[8.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :years_active
      t.string :members

      t.timestamps
    end
  end
end
