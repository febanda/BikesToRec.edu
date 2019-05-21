class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :description
      t.string :image
      t.integer :x_coordinate
      t.integer :y_coordinate

      t.timestamps
    end
  end
end
