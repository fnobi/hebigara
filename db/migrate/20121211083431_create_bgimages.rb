class CreateBgimages < ActiveRecord::Migration
  def change
    create_table :bgimages do |t|
      t.string :path
      t.boolean :fixed

      t.timestamps
    end
  end
end
