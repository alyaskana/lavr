class RenameIsPublicToIsPublishedInStoriesTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :stories, :is_public, :is_published
  end
end
