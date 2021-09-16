class ChangeLegendImagesToText < ActiveRecord::Migration[6.0]
  def change
    change_column :images, :legend, :text
  end
end
