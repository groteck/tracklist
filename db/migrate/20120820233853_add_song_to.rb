class AddSongTo < ActiveRecord::Migration
  def up
    add_attachment :tracks, :song
  end

  def down
    remove_attachment :tracks, :song
  end
end
