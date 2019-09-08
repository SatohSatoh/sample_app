class RenameContextColumnToPost < ActiveRecord::Migration[6.0]
  def change
    rename_column :Post, :context, :content
  end
end
