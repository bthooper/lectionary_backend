class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.string :name
      t.string :description
      t.string :startDate
      t.string :endDate
      t.references :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
