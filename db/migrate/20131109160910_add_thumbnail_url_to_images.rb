class AddThumbnailUrlToImages < ActiveRecord::Migration
  def change
    add_column :images, :thumbnail_url, :text
  end
end
