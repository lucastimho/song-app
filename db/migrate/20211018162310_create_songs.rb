class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :album
      t.title :artist
      t.integer :year

      t.timestamps
    end
  end
end
