class CreateLectionaries < ActiveRecord::Migration[6.0]
  def change
    create_table :lectionaries do |t|
      t.string :name
      t.string :description
      t.string :owner
      t.string :license

      t.timestamps
    end
  end
end
