class CreateTaglinks < ActiveRecord::Migration
  def change
    create_table :taglinks do |t|
      t.integer :resource_id
      t.string :resource_type
      t.integer :tag_id

      t.timestamps
    end
  end
end
