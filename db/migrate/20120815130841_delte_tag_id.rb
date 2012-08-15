class DelteTagId < ActiveRecord::Migration
  def change
    remove_column :albums, :tag_id
    remove_column :tracks, :tag_id
  end
end
