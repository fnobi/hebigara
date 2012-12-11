class CreateSnakes < ActiveRecord::Migration
  def change
    create_table :snakes do |t|
      t.string :name

      t.timestamps
    end
  end
end
