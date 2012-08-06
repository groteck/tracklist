class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.integer :tag_id
      t.integer :author_id

      t.timestamps
    end
  end
end
