class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :images, :path, :url
  end
end
