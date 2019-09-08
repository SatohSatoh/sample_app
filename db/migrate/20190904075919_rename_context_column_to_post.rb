class RenameContextColumnToPost < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :context, :content
  end
end
