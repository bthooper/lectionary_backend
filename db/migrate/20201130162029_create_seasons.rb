class CreateSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :seasons do |t|
      t.string :name
      t.string :description
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
