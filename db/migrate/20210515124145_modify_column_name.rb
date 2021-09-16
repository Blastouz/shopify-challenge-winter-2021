class ModifyColumnName < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :link, :text
    add_column :reviews, :content, :text
  end
end
