class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :readings, :type, :reading_type
  end
end
