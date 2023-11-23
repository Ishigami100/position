class CreatePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :positions do |t|
      t.text :comment
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
