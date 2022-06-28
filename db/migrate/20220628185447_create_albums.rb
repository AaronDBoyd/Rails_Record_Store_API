class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :year
      t.string :genre

      t.timestamps
    end
  end
end
