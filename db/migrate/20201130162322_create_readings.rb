class CreateReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :readings do |t|
      t.string :reference
      t.string :link
      t.string :type
      t.string :bookName
      t.string :startChapter
      t.string :endChapter
      t.string :startVerse
      t.string :endVerse
      t.references :Day, null: false, foreign_key: true

      t.timestamps
    end
  end
end
