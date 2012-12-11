class CreateTrunks < ActiveRecord::Migration
  def change
    create_table :trunks do |t|
      t.integer :length
      t.string :bgcolor
      t.integer :bgimage_id
      t.integer :snake_id

      t.timestamps
    end
  end
end
