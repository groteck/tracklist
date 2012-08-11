class ChangeOrderName < ActiveRecord::Migration
  def change
    rename_column :tracks, :order, :track_number
  end
end
